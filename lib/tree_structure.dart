import 'package:schedule_mixer/drug.dart';
import 'package:schedule_mixer/drug_effect.dart';
import 'package:schedule_mixer/drug_ingredient.dart';

class TreeElement {
  final TreeElement? parent;
  final MixedDrug value;
  final List<TreeElement> children = [];

  TreeElement({this.parent, required this.value});

  void addChild(TreeElement child) {
    children.add(child);
  }
}

class DrugTree {
  static void initDrugTree(TreeElement root) {
    initDrugLayer(root, 0, 2);
  }
  
  static void initDrugLayer(TreeElement parent, int currentLayer, int maxLayer) {
    if(currentLayer >= maxLayer) return;

    const List<DrugIngredient> allIngredients = DrugIngredient.allIngredients;

    for (var ingredient in allIngredients) {
      MixedDrug parentCopy = parent.value.copy();
      MixedDrug child = mixWithIngredient(parentCopy, ingredient);

      TreeElement childTreeElement = TreeElement(parent: parent, value: child);
      parent.addChild(childTreeElement);
    }
    for (var child in parent.children) {
      initDrugLayer(child, currentLayer+1, maxLayer);
    }
  }

  static MixedDrug mixWithIngredient(MixedDrug drug, DrugIngredient ingredient) {
    final List<MapEntry<DrugEffect, DrugEffect>> replacementList = [];
    
    // Normal Replacement Map
    for (var replacement in ingredient.replacementMap) {
      if(drug.effects.contains(replacement.key)) {
        print("REPLACE: ${replacement.key.displayName} ${replacement.value.displayName}");
        replacementList.add(replacement);
      }
    }

    final List<MapEntry<MapEntry<DrugEffect?, DrugEffect?>, MapEntry<DrugEffect, DrugEffect>>> nullMap = [];
    for (var entry in ingredient.specialReplacementMap ?? nullMap) {
      MapEntry<DrugEffect?, DrugEffect?> specialReq = entry.key;
      MapEntry<DrugEffect, DrugEffect> specialRepl = entry.value;
      if(
        (specialReq.key == null || drug.effects.contains(specialReq.key)) &&
        (specialReq.value == null || !(drug.effects.contains(specialReq.value)))
      ) {
        print("SPECIAL");
        if(drug.effects.contains(specialRepl.key)) {
          replacementList.add(specialRepl);
        }
      } 
    }      

    // Replacing
    for (var replacement in replacementList) {
      final DrugEffect key = replacement.key;
      final DrugEffect value = replacement.value;

      if(drug.effects.contains(key) && !(drug.effects.contains(value))) {
        drug.effects.remove(key);
        drug.addEffect(value);
      }
    }

    // Add standart
    if(!drug.effects.contains(ingredient.createdEffect)) {
      print("ADD: ${ingredient.createdEffect.displayName}");
      drug.addEffect(ingredient.createdEffect);
    }
    // Add to ingredient list
    drug.ingredientList.add(ingredient);

    print(drug.effects.map((e) => e.displayName));
    print(drug.ingredientList.map((i) => i.displayName));
    print("");
    return drug;
  }

  static List<MixedDrug> getTreeLayer(TreeElement root, int targetDepth, {int currentDepth = 0}) {
    if (targetDepth < 0) return [];

    if (currentDepth == targetDepth) {
      print("${root.value.displayName} ${root.value.ingredientList.map((i) => i.displayName)} ${root.value.effects.map((e) => e.displayName)}");
      return [root.value];
    }

    List<MixedDrug> results = [];
    for (var child in root.children) {
      results.addAll(getTreeLayer(child, targetDepth, currentDepth: currentDepth + 1));
    }

    return results;
  }
}