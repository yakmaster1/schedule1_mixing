import 'package:schedule_mixer/drug_effect.dart';

class DrugIngredient {
  final String displayName;
  final double price;
  final DrugEffect createdEffect;
  final List<MapEntry<DrugEffect, DrugEffect>> replacementMap;

  final List<
    MapEntry<
      // inMix, notInMix
      MapEntry<DrugEffect?, DrugEffect?>, 
      MapEntry<DrugEffect, DrugEffect>
    >
  >? specialReplacementMap;

  const DrugIngredient({
    required this.displayName,
    required this.price,
    required this.createdEffect,
    required this.replacementMap,
    this.specialReplacementMap
  });

  static const DrugIngredient cuke = DrugIngredient(
    displayName: "Cuke", 
    price: 2, 
    createdEffect: DrugEffect.energizing, 
    replacementMap: [
      MapEntry(DrugEffect.munchies, DrugEffect.athletic),
      MapEntry(DrugEffect.foggy, DrugEffect.cyclopean),
      MapEntry(DrugEffect.toxic, DrugEffect.euphoric),
      MapEntry(DrugEffect.euphoric, DrugEffect.laxative),
      MapEntry(DrugEffect.slippery, DrugEffect.munchies),
      MapEntry(DrugEffect.sneaky, DrugEffect.paranoia),
      MapEntry(DrugEffect.gingeritis, DrugEffect.thoughtprovoking)
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(DrugEffect.munchies, null), 
        MapEntry(DrugEffect.slippery, DrugEffect.athletic)
      ),
    ]
  );

  static const DrugIngredient banana = DrugIngredient(
    displayName: "Banana", 
    price: 2, 
    createdEffect: DrugEffect.gingeritis, 
    replacementMap: [
      MapEntry(DrugEffect.smelly, DrugEffect.antigravity),
      MapEntry(DrugEffect.disorienting, DrugEffect.focused),
      MapEntry(DrugEffect.paranoia, DrugEffect.jennerising),
      MapEntry(DrugEffect.longfaced, DrugEffect.refreshing),
      MapEntry(DrugEffect.focused, DrugEffect.seizure),
      MapEntry(DrugEffect.toxic, DrugEffect.smelly),
      MapEntry(DrugEffect.calming, DrugEffect.sneaky),
      MapEntry(DrugEffect.cyclopean, DrugEffect.thoughtprovoking),
      MapEntry(DrugEffect.energizing, DrugEffect.thoughtprovoking)
    ]
  );

  static const DrugIngredient paracetamol = DrugIngredient(
    displayName: "Paracetamol", 
    price: 3, 
    createdEffect: DrugEffect.sneaky, 
    replacementMap: [
      MapEntry(DrugEffect.munchies, DrugEffect.antigravity),
      MapEntry(DrugEffect.electrifying, DrugEffect.athletic),
      MapEntry(DrugEffect.paranoia, DrugEffect.balding),
      MapEntry(DrugEffect.spicy, DrugEffect.brighteyed),
      MapEntry(DrugEffect.foggy, DrugEffect.calming),
      MapEntry(DrugEffect.focused, DrugEffect.gingeritis),
      MapEntry(DrugEffect.calming, DrugEffect.slippery),
      MapEntry(DrugEffect.glowing, DrugEffect.toxic),
      MapEntry(DrugEffect.toxic, DrugEffect.tropicthunder)
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(DrugEffect.paranoia, null), 
        MapEntry(DrugEffect.energizing, DrugEffect.balding)
      ),
      MapEntry(
        MapEntry(DrugEffect.munchies, null), 
        MapEntry(DrugEffect.energizing, DrugEffect.paranoia)
      ),
    ]
  );

  static const DrugIngredient donut = DrugIngredient(
    displayName: "Donut", 
    price: 3, 
    createdEffect: DrugEffect.caloriedense, 
    replacementMap: [
      MapEntry(DrugEffect.shrinking, DrugEffect.energizing),
      MapEntry(DrugEffect.focused, DrugEffect.euphoric),
      MapEntry(DrugEffect.jennerising, DrugEffect.gingeritis),
      MapEntry(DrugEffect.antigravity, DrugEffect.slippery),
      MapEntry(DrugEffect.balding, DrugEffect.sneaky),
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(DrugEffect.caloriedense, DrugEffect.explosive), 
        MapEntry(DrugEffect.caloriedense, DrugEffect.explosive)
      ),
    ]
  );

  static const DrugIngredient viagra = DrugIngredient(
    displayName: "V*agra", 
    price: 4, 
    createdEffect: DrugEffect.tropicthunder, 
    replacementMap: [
      MapEntry(DrugEffect.euphoric, DrugEffect.brighteyed),
      MapEntry(DrugEffect.laxative, DrugEffect.calming),
      MapEntry(DrugEffect.athletic, DrugEffect.sneaky),
      MapEntry(DrugEffect.disorienting, DrugEffect.toxic),
    ],
  );

  static const DrugIngredient mouthwash = DrugIngredient(
    displayName: "Mouth Wash", 
    price: 4, 
    createdEffect: DrugEffect.balding, 
    replacementMap: [
      MapEntry(DrugEffect.calming, DrugEffect.antigravity),
      MapEntry(DrugEffect.focused, DrugEffect.jennerising),
      MapEntry(DrugEffect.explosive, DrugEffect.sedating),
      MapEntry(DrugEffect.caloriedense, DrugEffect.sneaky),
    ],
  );

  static const DrugIngredient flumedicine = DrugIngredient(
    displayName: "Flu Medicine", 
    price: 5, 
    createdEffect: DrugEffect.sedating, 
    replacementMap: [
      MapEntry(DrugEffect.calming, DrugEffect.brighteyed),
      MapEntry(DrugEffect.focused, DrugEffect.calming),
      MapEntry(DrugEffect.laxative, DrugEffect.euphoric),
      MapEntry(DrugEffect.cyclopean, DrugEffect.foggy),
      MapEntry(DrugEffect.thoughtprovoking, DrugEffect.gingeritis),
      MapEntry(DrugEffect.athletic, DrugEffect.munchies),
      MapEntry(DrugEffect.shrinking, DrugEffect.paranoia),
      MapEntry(DrugEffect.electrifying, DrugEffect.refreshing),
      MapEntry(DrugEffect.munchies, DrugEffect.slippery),
      MapEntry(DrugEffect.euphoric, DrugEffect.toxic),
    ],
  );

  static const DrugIngredient gasoline = DrugIngredient(
    displayName: "Gasoline", 
    price: 5, 
    createdEffect: DrugEffect.toxic, 
    replacementMap: [
      MapEntry(DrugEffect.paranoia, DrugEffect.calming),
      MapEntry(DrugEffect.electrifying, DrugEffect.disorienting),
      MapEntry(DrugEffect.energizing, DrugEffect.euphoric),
      MapEntry(DrugEffect.shrinking, DrugEffect.focused),
      MapEntry(DrugEffect.laxative, DrugEffect.foggy),
      MapEntry(DrugEffect.disorienting, DrugEffect.glowing),
      MapEntry(DrugEffect.munchies, DrugEffect.sedating),
      MapEntry(DrugEffect.gingeritis, DrugEffect.smelly),
      MapEntry(DrugEffect.jennerising, DrugEffect.sneaky),
      MapEntry(DrugEffect.energizing, DrugEffect.spicy),
      MapEntry(DrugEffect.sneaky, DrugEffect.tropicthunder),
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(null, DrugEffect.energizing), 
        MapEntry(DrugEffect.euphoric, DrugEffect.spicy)
      ),
    ]
  );

  static const DrugIngredient energydrink = DrugIngredient(
    displayName: "Energy Drink", 
    price: 6, 
    createdEffect: DrugEffect.athletic, 
    replacementMap: [
      MapEntry(DrugEffect.schizophrenic, DrugEffect.balding),
      MapEntry(DrugEffect.glowing, DrugEffect.disorienting),
      MapEntry(DrugEffect.disorienting, DrugEffect.electrifying),
      MapEntry(DrugEffect.euphoric, DrugEffect.energizing),
      MapEntry(DrugEffect.spicy, DrugEffect.euphoric),
      MapEntry(DrugEffect.foggy, DrugEffect.laxative),
      MapEntry(DrugEffect.sedating, DrugEffect.munchies),
      MapEntry(DrugEffect.focused, DrugEffect.shrinking),
      MapEntry(DrugEffect.tropicthunder, DrugEffect.sneaky)
    ],
  );

  static const DrugIngredient motoroil = DrugIngredient(
    displayName: "Motor Oil", 
    price: 6, 
    createdEffect: DrugEffect.slippery, 
    replacementMap: [
      MapEntry(DrugEffect.paranoia, DrugEffect.antigravity),
      MapEntry(DrugEffect.energizing, DrugEffect.munchies),
      MapEntry(DrugEffect.energizing, DrugEffect.schizophrenic),
      MapEntry(DrugEffect.euphoric, DrugEffect.sedating),
      MapEntry(DrugEffect.foggy, DrugEffect.toxic),
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(null, DrugEffect.energizing), 
        MapEntry(DrugEffect.munchies, DrugEffect.schizophrenic)
      ),
    ]
  );

  static const DrugIngredient megabean = DrugIngredient(
    displayName: "Mega Bean", 
    price: 7, 
    createdEffect: DrugEffect.foggy, 
    replacementMap: [
      MapEntry(DrugEffect.sneaky, DrugEffect.calming),
      MapEntry(DrugEffect.thoughtprovoking, DrugEffect.cyclopean),
      MapEntry(DrugEffect.focused, DrugEffect.disorienting),
      MapEntry(DrugEffect.shrinking, DrugEffect.electrifying),
      MapEntry(DrugEffect.thoughtprovoking, DrugEffect.energizing),
      MapEntry(DrugEffect.seizure, DrugEffect.focused),
      MapEntry(DrugEffect.calming, DrugEffect.glowing),
      MapEntry(DrugEffect.sneaky, DrugEffect.glowing),
      MapEntry(DrugEffect.athletic, DrugEffect.laxative),
      MapEntry(DrugEffect.jennerising, DrugEffect.paranoia),
      MapEntry(DrugEffect.slippery, DrugEffect.toxic),
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(null, DrugEffect.thoughtprovoking), 
        MapEntry(DrugEffect.energizing, DrugEffect.cyclopean)
      ),
    ]
  );

  static const DrugIngredient chili = DrugIngredient(
    displayName: "Chilli", 
    price: 7, 
    createdEffect: DrugEffect.spicy, 
    replacementMap: [
      MapEntry(DrugEffect.sneaky, DrugEffect.brighteyed),
      MapEntry(DrugEffect.athletic, DrugEffect.euphoric),
      MapEntry(DrugEffect.laxative, DrugEffect.longfaced),
      MapEntry(DrugEffect.shrinking, DrugEffect.refreshing),
      MapEntry(DrugEffect.munchies, DrugEffect.toxic),
      MapEntry(DrugEffect.antigravity, DrugEffect.tropicthunder),
    ],
  );

  static const DrugIngredient battery = DrugIngredient(
    displayName: "Battery", 
    price: 8, 
    createdEffect: DrugEffect.brighteyed, 
    replacementMap: [
      MapEntry(DrugEffect.laxative, DrugEffect.caloriedense),
      MapEntry(DrugEffect.cyclopean, DrugEffect.glowing),
      MapEntry(DrugEffect.shrinking, DrugEffect.munchies),
      MapEntry(DrugEffect.munchies, DrugEffect.tropicthunder),
    ],
    specialReplacementMap: [
      MapEntry(
        MapEntry(null, DrugEffect.zombifying), 
        MapEntry(DrugEffect.electrifying, DrugEffect.euphoric)
      ),
      MapEntry(
        MapEntry(null, DrugEffect.electrifying), 
        MapEntry(DrugEffect.euphoric, DrugEffect.zombifying)
      ),
    ]
  );

  static const DrugIngredient iodine = DrugIngredient(
    displayName: "Iodine", 
    price: 8, 
    createdEffect: DrugEffect.jennerising, 
    replacementMap: [
      MapEntry(DrugEffect.caloriedense, DrugEffect.gingeritis),
      MapEntry(DrugEffect.foggy, DrugEffect.paranoia),
      MapEntry(DrugEffect.calming, DrugEffect.sedating),
      MapEntry(DrugEffect.euphoric, DrugEffect.seizure),
      MapEntry(DrugEffect.toxic, DrugEffect.sneaky),
      MapEntry(DrugEffect.refreshing, DrugEffect.thoughtprovoking),
    ],
  );

  static const DrugIngredient addy = DrugIngredient(
    displayName: "Addy", 
    price: 9, 
    createdEffect: DrugEffect.thoughtprovoking, 
    replacementMap: [
      MapEntry(DrugEffect.longfaced, DrugEffect.electrifying),
      MapEntry(DrugEffect.foggy, DrugEffect.energizing),
      MapEntry(DrugEffect.explosive, DrugEffect.euphoric),
      MapEntry(DrugEffect.sedating, DrugEffect.gingeritis),
      MapEntry(DrugEffect.glowing, DrugEffect.refreshing),
    ],
  );

  static const DrugIngredient horsesemen = DrugIngredient(
    displayName: "Horse S*men", 
    price: 9, 
    createdEffect: DrugEffect.longfaced, 
    replacementMap: [
      MapEntry(DrugEffect.antigravity, DrugEffect.calming),
      MapEntry(DrugEffect.thoughtprovoking, DrugEffect.electrifying),
      MapEntry(DrugEffect.gingeritis, DrugEffect.refreshing)
    ],
  );

  static const List<DrugIngredient> allIngredients = [
    cuke,
    banana,
    paracetamol,
    donut,
    viagra,
    mouthwash,
    flumedicine,
    gasoline,
    energydrink,
    motoroil,
    megabean,
    chili,
    battery,
    iodine,
    addy,
    horsesemen
  ];
}