import 'package:schedule_mixer/drug_effect.dart';

class DrugIngredient {
  final String displayName;
  final double price;
  final DrugEffect createdEffect;
  final Map<DrugEffect, DrugEffect> replacementMap;

  final List<DrugEffect?>? isInMixSpecialReplacement;
  final List<DrugEffect?>? isNotInMixSpecialReplacement;
  final Map<int, Map<DrugEffect, DrugEffect>>? specialReplacementMap;

  const DrugIngredient({
    required this.displayName,
    required this.price,
    required this.createdEffect,
    required this.replacementMap,
    this.isInMixSpecialReplacement,
    this.isNotInMixSpecialReplacement,
    this.specialReplacementMap
  });

  static const DrugIngredient cuke = DrugIngredient(
    displayName: "Cuke", 
    price: 2, 
    createdEffect: DrugEffect.energizing, 
    replacementMap: {
      DrugEffect.munchies: DrugEffect.athletic,
      DrugEffect.foggy: DrugEffect.cyclopean,
      DrugEffect.toxic: DrugEffect.euphoric,
      DrugEffect.euphoric: DrugEffect.laxative,
      DrugEffect.slippery: DrugEffect.munchies,
      DrugEffect.sneaky: DrugEffect.paranoia,
      DrugEffect.gingeritis: DrugEffect.thoughtprovoking
    },
    isInMixSpecialReplacement: [
      DrugEffect.munchies
    ],
    isNotInMixSpecialReplacement: [
      null
    ],
    specialReplacementMap: {
      0: {DrugEffect.slippery: DrugEffect.athletic}
    }
  );

  static const DrugIngredient banana = DrugIngredient(
    displayName: "Banana", 
    price: 2, 
    createdEffect: DrugEffect.gingeritis, 
    replacementMap: {
      DrugEffect.smelly: DrugEffect.antigravity,
      DrugEffect.disorienting: DrugEffect.focused,
      DrugEffect.paranoia: DrugEffect.jennerising,
      DrugEffect.longfaced: DrugEffect.refreshing,
      DrugEffect.focused: DrugEffect.seizure,
      DrugEffect.toxic: DrugEffect.smelly,
      DrugEffect.calming: DrugEffect.sneaky,
      DrugEffect.cyclopean: DrugEffect.thoughtprovoking,
      DrugEffect.energizing: DrugEffect.thoughtprovoking
    }
  );

  static const DrugIngredient paracetamol = DrugIngredient(
    displayName: "Paracetamol", 
    price: 3, 
    createdEffect: DrugEffect.sneaky, 
    replacementMap: {
      DrugEffect.munchies: DrugEffect.antigravity,
      DrugEffect.electrifying: DrugEffect.athletic,
      DrugEffect.paranoia: DrugEffect.balding,
      DrugEffect.spicy: DrugEffect.brighteyed,
      DrugEffect.foggy: DrugEffect.calming,
      DrugEffect.focused: DrugEffect.gingeritis,
      DrugEffect.calming: DrugEffect.slippery,
      DrugEffect.glowing: DrugEffect.toxic,
      DrugEffect.toxic: DrugEffect.tropicthunder
    },
    isInMixSpecialReplacement: [
      DrugEffect.paranoia,
      DrugEffect.munchies
    ],
    isNotInMixSpecialReplacement: [
      null,
      null
    ],
    specialReplacementMap: {
      0: {DrugEffect.energizing: DrugEffect.balding},
      1: {DrugEffect.energizing: DrugEffect.paranoia}
    }
  );

  static const DrugIngredient donut = DrugIngredient(
    displayName: "Donut", 
    price: 3, 
    createdEffect: DrugEffect.caloriedense, 
    replacementMap: {
      DrugEffect.shrinking: DrugEffect.energizing,
      DrugEffect.focused: DrugEffect.euphoric,
      DrugEffect.jennerising: DrugEffect.gingeritis,
      DrugEffect.antigravity: DrugEffect.slippery,
      DrugEffect.balding: DrugEffect.sneaky,
    },
    isInMixSpecialReplacement: [
      DrugEffect.caloriedense
    ],
    isNotInMixSpecialReplacement: [
      DrugEffect.explosive
    ],
    specialReplacementMap: {
      0: {DrugEffect.caloriedense: DrugEffect.explosive}
    }
  );

  static const DrugIngredient viagra = DrugIngredient(
    displayName: "V*agra", 
    price: 4, 
    createdEffect: DrugEffect.tropicthunder, 
    replacementMap: {
      DrugEffect.euphoric: DrugEffect.brighteyed,
      DrugEffect.laxative: DrugEffect.calming,
      DrugEffect.athletic: DrugEffect.sneaky,
      DrugEffect.disorienting: DrugEffect.toxic,
    },
  );

  static const DrugIngredient mouthwash = DrugIngredient(
    displayName: "Mouth Wash", 
    price: 4, 
    createdEffect: DrugEffect.balding, 
    replacementMap: {
      DrugEffect.calming: DrugEffect.antigravity,
      DrugEffect.focused: DrugEffect.jennerising,
      DrugEffect.explosive: DrugEffect.sedating,
      DrugEffect.caloriedense: DrugEffect.sneaky,
    },
  );

  static const DrugIngredient flumedicine = DrugIngredient(
    displayName: "Flu Medicine", 
    price: 5, 
    createdEffect: DrugEffect.sedating, 
    replacementMap: {
      DrugEffect.calming: DrugEffect.brighteyed,
      DrugEffect.focused: DrugEffect.calming,
      DrugEffect.laxative: DrugEffect.euphoric,
      DrugEffect.cyclopean: DrugEffect.foggy,
      DrugEffect.thoughtprovoking: DrugEffect.gingeritis,
      DrugEffect.athletic: DrugEffect.munchies,
      DrugEffect.shrinking: DrugEffect.paranoia,
      DrugEffect.electrifying: DrugEffect.refreshing,
      DrugEffect.munchies: DrugEffect.slippery,
      DrugEffect.euphoric: DrugEffect.toxic,
    },
  );

  static const List<DrugIngredient> allIngredients = [
    cuke,
    banana,
    paracetamol,
    donut,
    viagra,
    mouthwash,
    flumedicine
  ];
}