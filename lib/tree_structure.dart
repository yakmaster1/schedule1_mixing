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
  static void initDrugTree(TreeElement parent) {
    const List<DrugIngredient> allIngredients = DrugIngredient.allIngredients;

    for (var ingredient in allIngredients) {
      MixedDrug parentCopy = parent.value.copy();
      MixedDrug child = mixWithIngredient(parentCopy, ingredient);
      parent.addChild(
        TreeElement(parent: parent, value: child)
      );
    }
  }

  static MixedDrug mixWithIngredient(MixedDrug drug, DrugIngredient ingredient) {
    final List<MapEntry<DrugEffect, DrugEffect>?> listReplacementMap = [];
    for (var effect in drug.effects) {
      MapEntry<DrugEffect, DrugEffect>? replacementMap;
      try {
        replacementMap = ingredient.replacementMap.entries.firstWhere((entry) => entry.key == effect);
      } catch (e) {
        replacementMap = null;
      }
      listReplacementMap.add(replacementMap);
    }
    for (var replacement in listReplacementMap) {
      final DrugEffect? key = replacement?.key;
      final DrugEffect? value = replacement?.value;
      
      if(key != null && drug.effects.contains(key) && value != null) {
        drug.effects.remove(key);
        drug.addEffect(value);
      }
    }
    drug.addEffect(ingredient.createdEffect);
    drug.ingredientList.add(ingredient);
    return drug;
  }
}