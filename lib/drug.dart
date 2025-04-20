import 'package:schedule_mixer/drug_effect.dart';
import 'package:schedule_mixer/drug_ingredient.dart';

enum DrugType {
  weed,
  meth,
  coke
}

class MixedDrug {
  final String displayName;
  final DrugType type;
  final List<DrugEffect> effects;
  final List<DrugIngredient> ingredientList;

  const MixedDrug({
    required this.displayName,
    required this.type,
    required this.effects,
    required this.ingredientList
  });

  void addEffect(DrugEffect effect) {
    effects.add(effect);
  }

  MixedDrug copy() {
    return MixedDrug(
      displayName: displayName, 
      type: type, 
      effects: List<DrugEffect>.from(effects),
      ingredientList: List<DrugIngredient>.from(ingredientList)
    );
  }

  static MixedDrug convertToMixed(Drug drug) {
    return MixedDrug(
      displayName: drug.displayName, 
      type: drug.type, 
      effects: [if (drug.starterEffect != null) drug.starterEffect!],
      ingredientList: []
    );
  }
}

class Drug {
  final String displayName;
  final DrugType type;
  final DrugEffect? starterEffect;
  
  const Drug({
    required this.displayName,
    required this.type,
    this.starterEffect
  });

  static const Drug ogKush = Drug(
    displayName: "OG Kush",
    type: DrugType.weed,
    starterEffect: DrugEffect.calming
  );

  static const Drug sourDiesel = Drug(
    displayName: "Sour Diesel",
    type: DrugType.weed,
    starterEffect: DrugEffect.refreshing
  );

  static const Drug greenCrack = Drug(
    displayName: "Green Crack",
    type: DrugType.weed,
    starterEffect: DrugEffect.energizing
  );

  static const Drug grandaddyPurple = Drug(
    displayName: "Grandaddy Purple",
    type: DrugType.weed,
    starterEffect: DrugEffect.sedating
  );

  static const Drug meth = Drug(
    displayName: "Meth",
    type: DrugType.meth
  );

  static const Drug coke = Drug(
    displayName: "Coke",
    type: DrugType.coke
  );

  static const List<Drug> allDrugs = [
    ogKush,
    sourDiesel,
    greenCrack,
    grandaddyPurple,
    meth,
    coke
  ];
}