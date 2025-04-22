import 'package:schedule_mixer/drug.dart';
import 'package:schedule_mixer/drug_effect.dart';
import 'package:schedule_mixer/drug_ingredient.dart';
import 'package:schedule_mixer/my_provider.dart';

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
    //initDrugLayer(root, 0, 1);
    //print(16*16*16*16*16*16*16*16);
  }

  static void searchFor(MyProvider provider) {
    const List<DrugIngredient> allIngredients = DrugIngredient.allIngredients;
    provider.searchResults.clear();

    MixedDrug starter = MixedDrug.convertToMixed(Drug.ogKush);

    void dfs(MixedDrug current, int depth) {
      if (depth > provider.searchLayers) return;
      if (provider.searchResults.length > 100) return;

      for (var ingredient in allIngredients) {
        MixedDrug copy = current.copy();
        MixedDrug mixed = mixWithIngredient(copy, ingredient);

        if (provider.selectedEffects.toSet().difference(mixed.effects.toSet()).isEmpty) {
          provider.searchResults.add(mixed);
        }

        dfs(mixed, depth + 1);
      }
    }
    dfs(starter, 1);
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
        //print("REPLACE: ${replacement.key.displayName} ${replacement.value.displayName}");
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
        //print("SPECIAL");
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
      //print("ADD: ${ingredient.createdEffect.displayName}");
      drug.addEffect(ingredient.createdEffect);
    }
    // Add to ingredient list
    drug.ingredientList.add(ingredient);

    //print(drug.effects.map((e) => e.displayName));
    //print(drug.ingredientList.map((i) => i.displayName));
    //print("");
    return drug;
  }
}