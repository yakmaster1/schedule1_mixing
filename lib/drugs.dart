import 'package:flutter/material.dart';

enum DrugType {
  weed,
}

enum EffectType {
  ability,
  cosmetic,
  none
}

enum DrugEffectEnum {
  antigravity,
  athletic,
  balding,
  brighteyed,
  calming,
  caloriedense,
  cyclopean,
  disorienting,
  electrifying,
  energizing,
  euphoric,
  explosive,
  focused,
  foggy,
  gingeritis,
  glowing,
  jennerising,
  laxative,
  lethal,
  longfaced,
  munchies,
  paranoia,
  refreshing,
  schizophrenic,
  sedating,
  seizure,
  shrinking,
  slippery,
  smelly,
  sneaky,
  spicy,
  thoughtprovoking,
  toxic,
  tropicthunder,
  zombifying 
}

class DrugEffect {
  final String name;
  final Color displayColor;
  final double multiplier;
  final EffectType type;
  final String description;
  final List<DrugRoute> drugRoutes;

  const DrugEffect({
    required this.name,
    required this.displayColor,
    required this.multiplier,
    required this.type,
    required this.description,
    required this.drugRoutes
  });
}

class DrugEffects {
  static DrugEffect getDrugEffectFromEnum(DrugEffectEnum? drugEnum) {
    switch (drugEnum) {
      case DrugEffectEnum.antigravity: return DrugEffects.antigravity;
      case DrugEffectEnum.athletic: return DrugEffects.athletic;
      case DrugEffectEnum.balding: return DrugEffects.balding;
      case DrugEffectEnum.brighteyed: return DrugEffects.brighteyed;
      case DrugEffectEnum.calming: return DrugEffects.calming;
      case DrugEffectEnum.caloriedense: return DrugEffects.caloriedense;
      case DrugEffectEnum.cyclopean: return DrugEffects.cyclopean;
      case DrugEffectEnum.disorienting: return DrugEffects.disorienting;
      case DrugEffectEnum.electrifying: return DrugEffects.electrifying;
      case DrugEffectEnum.energizing: return DrugEffects.energizing;
      case DrugEffectEnum.euphoric: return DrugEffects.euphoric;
      case DrugEffectEnum.explosive: return DrugEffects.explosive;
      case DrugEffectEnum.focused: return DrugEffects.focused;
      case DrugEffectEnum.foggy: return DrugEffects.foggy;
      case DrugEffectEnum.gingeritis: return DrugEffects.gingeritis;
      case DrugEffectEnum.glowing: return DrugEffects.glowing;
      case DrugEffectEnum.jennerising: return DrugEffects.jennerising;
      case DrugEffectEnum.laxative: return DrugEffects.laxative;
      case DrugEffectEnum.lethal: return DrugEffects.lethal;
      case DrugEffectEnum.longfaced: return DrugEffects.longfaced;
      case DrugEffectEnum.munchies: return DrugEffects.munchies;
      case DrugEffectEnum.paranoia: return DrugEffects.paranoia;
      case DrugEffectEnum.refreshing: return DrugEffects.refreshing;
      case DrugEffectEnum.schizophrenic: return DrugEffects.schizophrenic;
      case DrugEffectEnum.sedating: return DrugEffects.sedating;
      case DrugEffectEnum.seizure: return DrugEffects.seizure;
      case DrugEffectEnum.shrinking: return DrugEffects.shrinking;
      case DrugEffectEnum.slippery: return DrugEffects.slippery;
      case DrugEffectEnum.smelly: return DrugEffects.smelly;
      case DrugEffectEnum.sneaky: return DrugEffects.sneaky;
      case DrugEffectEnum.spicy: return DrugEffects.spicy;
      case DrugEffectEnum.thoughtprovoking: return DrugEffects.thoughtprovoking;
      case DrugEffectEnum.toxic: return DrugEffects.toxic;
      case DrugEffectEnum.tropicthunder: return DrugEffects.tropicthunder;
      case DrugEffectEnum.zombifying: return DrugEffects.zombifying;
      default: return DrugEffects.none;
    }
  }

  static const List<DrugEffectEnum> starterDrugEffects = [
    DrugEffectEnum.energizing,
    DrugEffectEnum.gingeritis,
    DrugEffectEnum.sneaky,
    DrugEffectEnum.caloriedense,
    DrugEffectEnum.tropicthunder,
    DrugEffectEnum.balding,
    DrugEffectEnum.sedating,
    DrugEffectEnum.toxic,
    DrugEffectEnum.athletic,
    DrugEffectEnum.slippery,
    DrugEffectEnum.foggy,
    DrugEffectEnum.spicy,
    DrugEffectEnum.brighteyed,
    DrugEffectEnum.jennerising,
    DrugEffectEnum.thoughtprovoking,
    DrugEffectEnum.longfaced
  ];

  static const DrugEffect none = DrugEffect(
    name: "none",
    displayColor: Colors.black,
    multiplier: -1,
    type: EffectType.none,
    description: "Null",
    drugRoutes: []
  );
  
  static const DrugEffect antigravity = DrugEffect(
    name: "Anti-Gravity",
    displayColor: Colors.blue,
    multiplier: 0.54,
    type: EffectType.ability,
    description: "Causes user to jump higher.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.smelly),
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.munchies),
      DrugRoute(ingredient: Ingredients.mouthwash, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.motoroil, devolvesTo: DrugEffectEnum.paranoia)
    ]
  );

  static const DrugEffect athletic = DrugEffect(
    name: "Athletic",
    displayColor: Colors.lightBlue,
    multiplier: 0.32,
    type: EffectType.ability,
    description: "Causes user to run faster.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.munchies),
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.electrifying)
    ]
  );

  static const DrugEffect balding = DrugEffect(
    name: "Balding",
    displayColor: Colors.yellow,
    multiplier: 0.3,
    type: EffectType.cosmetic,
    description: "Causes user to be bald.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.paranoia),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.schizophrenic)
    ]
  );

  static const DrugEffect brighteyed = DrugEffect(
    name: "Bright-Eyed",
    displayColor: Colors.blueAccent,
    multiplier: 0.4,
    type: EffectType.ability,
    description: "Causes user's eyes to shine flashlight beams.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.spicy),
      DrugRoute(ingredient: Ingredients.viagra, devolvesTo: DrugEffectEnum.euphoric),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.sneaky)
    ]
  );

  static const DrugEffect calming = DrugEffect(
    name: "Calming",
    displayColor: Colors.orangeAccent,
    multiplier: 0.1,
    type: EffectType.cosmetic,
    description: "Causes user to have chromatic aberration around screen.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.foggy),
      DrugRoute(ingredient: Ingredients.viagra, devolvesTo: DrugEffectEnum.laxative),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.focused),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.paranoia),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.sneaky),
      DrugRoute(ingredient: Ingredients.horsesemen, devolvesTo: DrugEffectEnum.antigravity)
    ]
  );

  static const DrugEffect caloriedense = DrugEffect(
    name: "Calorie-Dense",
    displayColor: Colors.pinkAccent,
    multiplier: 0.28,
    type: EffectType.cosmetic,
    description: "Causes user to appear fat.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.battery, devolvesTo: DrugEffectEnum.laxative)
    ]
  );

  static const DrugEffect cyclopean = DrugEffect(
    name: "Cyclopean",
    displayColor: Colors.yellow,
    multiplier: 0.56,
    type: EffectType.cosmetic,
    description: "Causes user to only have one eye.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.foggy),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.thoughtprovoking)
    ]
  );

  static const DrugEffect disorienting = DrugEffect(
    name: "Disorienting",
    displayColor: Colors.orange,
    multiplier: 0.0,
    type: EffectType.ability,
    description: "Causes camera controls for up/down, and movement controls for left/right to be inverted. Forward/backward movement controls will also invert at random for a few steps.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.electrifying),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.focused),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.glowing)
    ]
  );

  static const DrugEffect electrifying = DrugEffect(
    name: "Electrifying",
    displayColor: Colors.lightBlueAccent,
    multiplier: 0.5,
    type: EffectType.cosmetic,
    description: "Causes lightning effect on user.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.shrinking),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.disorienting),
      DrugRoute(ingredient: Ingredients.addy, devolvesTo: DrugEffectEnum.longfaced),
      DrugRoute(ingredient: Ingredients.horsesemen, devolvesTo: DrugEffectEnum.thoughtprovoking)
    ]
  );

  static const DrugEffect energizing = DrugEffect(
    name: "Energizing",
    displayColor: Colors.lightGreen,
    multiplier: 0.22,
    type: EffectType.ability,
    description: "Causes user to run faster.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.donut, devolvesTo: DrugEffectEnum.shrinking),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.thoughtprovoking),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.euphoric),
      DrugRoute(ingredient: Ingredients.addy, devolvesTo: DrugEffectEnum.foggy)
    ]
  );

  static const DrugEffect euphoric = DrugEffect(
    name: "Euphoric",
    displayColor: Colors.yellow,
    multiplier: 0.18,
    type: EffectType.cosmetic,
    description: "Causes user to have a euphoric/happy high and smile.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.toxic),
      DrugRoute(ingredient: Ingredients.donut, devolvesTo: DrugEffectEnum.focused),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.laxative),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.energizing),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.spicy),
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.athletic),
      DrugRoute(ingredient: Ingredients.addy, devolvesTo: DrugEffectEnum.explosive)
    ]
  );

  static const DrugEffect explosive = DrugEffect(
    name: "Explosive",
    displayColor: Colors.redAccent,
    multiplier: 0.0,
    type: EffectType.ability,
    description: "Causes user to explode after ticking countdown, killing the user and damaging NPCs in the vicinity.",
    drugRoutes: []
  );

  static const DrugEffect focused = DrugEffect(
    name: "Focused",
    displayColor: Colors.lightBlue,
    multiplier: 0.16,
    type: EffectType.cosmetic,
    description: "Causes user to have chromatic aberration around screen.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.disorienting),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.shrinking),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.seizure)
    ]
  );

  static const DrugEffect foggy = DrugEffect(
    name: "Foggy",
    displayColor: Colors.blueGrey,
    multiplier: 0.36,
    type: EffectType.cosmetic,
    description: "Causes a fog cloud effect around user. Also causes a global fog effect, significantly limiting visibility.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.cyclopean),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.laxative)
    ]
  );

  static const DrugEffect gingeritis = DrugEffect(
    name: "Gingeritis",
    displayColor: Colors.orange,
    multiplier: 0.2,
    type: EffectType.cosmetic,
    description: "Causes user to have red hair.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.donut, devolvesTo: DrugEffectEnum.jennerising),
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.focused),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.thoughtprovoking),
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.caloriedense),
      DrugRoute(ingredient: Ingredients.addy, devolvesTo: DrugEffectEnum.sedating)
    ]
  );

  static const DrugEffect glowing = DrugEffect(
    name: "Glowing",
    displayColor: Colors.green,
    multiplier: 0.48,
    type: EffectType.cosmetic,
    description: "Causes user to have a radioactive glow.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.disorienting),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.sneaky),
      DrugRoute(ingredient: Ingredients.battery, devolvesTo: DrugEffectEnum.cyclopean)
    ]
  );

  static const DrugEffect jennerising = DrugEffect(
    name: "Jennerising",
    displayColor: Colors.purple,
    multiplier: 0.42,
    type: EffectType.cosmetic,
    description: "Causes user to appear female.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.paranoia),
      DrugRoute(ingredient: Ingredients.mouthwash, devolvesTo: DrugEffectEnum.focused)
    ]
  );

  static const DrugEffect laxative = DrugEffect(
    name: "Laxative",
    displayColor: Colors.brown,
    multiplier: 0.0,
    type: EffectType.cosmetic,
    description: "Causes user to constantly soil themselves.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.euphoric),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.foggy),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.athletic)
    ]
  );

  static const DrugEffect lethal = DrugEffect(
    name: "Lethal",
    displayColor: Colors.red,
    multiplier: 0.0,
    type: EffectType.ability,
    description: "Causes user to vomit and then die.",
    drugRoutes: []
  );

  static const DrugEffect longfaced = DrugEffect(
    name: "Long Faced",
    displayColor: Colors.yellow,
    multiplier: 0.52,
    type: EffectType.cosmetic,
    description: "Causes user's neck and face to grow.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.laxative)
    ]
  );

  static const DrugEffect munchies = DrugEffect(
    name: "Munchies",
    displayColor: Colors.brown,
    multiplier: 0.12,
    type: EffectType.none,
    description: "",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.slippery),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.athletic),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.sedating),
      DrugRoute(ingredient: Ingredients.motoroil, devolvesTo: DrugEffectEnum.energizing),
      DrugRoute(ingredient: Ingredients.battery, devolvesTo: DrugEffectEnum.shrinking)
    ]
  );

  static const DrugEffect paranoia = DrugEffect(
    name: "Paranoia",
    displayColor: Colors.redAccent,
    multiplier: 0.0,
    type: EffectType.cosmetic,
    description: "Causes user to have a bad high. Also makes NPCs appear to stare at the user from long distances.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.sneaky),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.shrinking),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.jennerising),
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.foggy)
    ]
  );

  static const DrugEffect refreshing = DrugEffect(
    name: "Refreshing",
    displayColor: Colors.grey,
    multiplier: 0.14,
    type: EffectType.none,
    description: "",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.longfaced),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.electrifying),
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.shrinking),
      DrugRoute(ingredient: Ingredients.addy, devolvesTo: DrugEffectEnum.glowing),
      DrugRoute(ingredient: Ingredients.horsesemen, devolvesTo: DrugEffectEnum.gingeritis)
    ]
  );

  static const DrugEffect schizophrenic = DrugEffect(
    name: "Schizophrenic",
    displayColor: Colors.purple,
    multiplier: 0.0,
    type: EffectType.ability,
    description: "Causes user to run backwards while saying 'oh no' (muffled) and hear muffled voices. Loud heart beat, open mouth frown, and squinting eyes. User's vision will also randomly pulse.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.motoroil, devolvesTo: DrugEffectEnum.energizing)
    ]
  );

  static const DrugEffect sedating = DrugEffect(
    name: "Sedating",
    displayColor: Colors.deepPurple,
    multiplier: 0.26,
    type: EffectType.cosmetic,
    description: "Causes user to have a vignette around screen and mouse smoothing.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.mouthwash, devolvesTo: DrugEffectEnum.explosive),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.munchies),
      DrugRoute(ingredient: Ingredients.motoroil, devolvesTo: DrugEffectEnum.euphoric)
    ]
  );

  static const DrugEffect seizure = DrugEffect(
    name: "Seizure-Inducing",
    displayColor: Colors.yellow,
    multiplier: 0.0,
    type: EffectType.cosmetic,
    description: "Causes user to have a seizure and shake on the ground.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.focused),
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.euphoric)
    ]
  );

  static const DrugEffect shrinking = DrugEffect(
    name: "Shrinking",
    displayColor: Colors.teal,
    multiplier: 0.6,
    type: EffectType.cosmetic,
    description: "Causes user to shrink.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.euphoric)
    ]
  );

  static const DrugEffect slippery = DrugEffect(
    name: "Slippery",
    displayColor: Colors.lightBlue,
    multiplier: 0.34,
    type: EffectType.ability,
    description: "Causes user to have sluggish, slippery movement.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.donut, devolvesTo: DrugEffectEnum.antigravity),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.munchies)
    ]
  );

  static const DrugEffect smelly = DrugEffect(
    name: "Smelly",
    displayColor: Colors.green,
    multiplier: 0.0,
    type: EffectType.cosmetic,
    description: "Causes user to have a stinky cloud around them.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.toxic),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.gingeritis)
    ]
  );

  static const DrugEffect sneaky = DrugEffect(
    name: "Sneaky",
    displayColor: Colors.blueGrey,
    multiplier: 0.24,
    type: EffectType.ability,
    description: "Causes the police '?' meter to fill up half as fast, and increases size of pickpocket success areas.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.calming),
      DrugRoute(ingredient: Ingredients.donut, devolvesTo: DrugEffectEnum.balding),
      DrugRoute(ingredient: Ingredients.viagra, devolvesTo: DrugEffectEnum.athletic),
      DrugRoute(ingredient: Ingredients.mouthwash, devolvesTo: DrugEffectEnum.caloriedense),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.jennerising),
      DrugRoute(ingredient: Ingredients.energydrink, devolvesTo: DrugEffectEnum.tropicthunder),
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.toxic)
    ]
  );

  static const DrugEffect spicy = DrugEffect(
    name: "Spicy",
    displayColor: Colors.redAccent,
    multiplier: 0.38,
    type: EffectType.cosmetic,
    description: "Causes user's head to light on fire.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.energizing)
    ]
  );

  static const DrugEffect thoughtprovoking = DrugEffect(
    name: "Thought-Provoking",
    displayColor: Colors.pinkAccent,
    multiplier: 0.44,
    type: EffectType.cosmetic,
    description: "Causes user's head to grow in size.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.cuke, devolvesTo: DrugEffectEnum.gingeritis),
      DrugRoute(ingredient: Ingredients.banana, devolvesTo: DrugEffectEnum.energizing),
      DrugRoute(ingredient: Ingredients.iodine, devolvesTo: DrugEffectEnum.refreshing),
    ]
  );

  static const DrugEffect toxic = DrugEffect(
    name: "Toxic",
    displayColor: Colors.greenAccent,
    multiplier: 0.0,
    type: EffectType.cosmetic,
    description: "Causes user to vomit.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.glowing),
      DrugRoute(ingredient: Ingredients.viagra, devolvesTo: DrugEffectEnum.disorienting),
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.munchies),
      DrugRoute(ingredient: Ingredients.megabean, devolvesTo: DrugEffectEnum.slippery),
      DrugRoute(ingredient: Ingredients.motoroil, devolvesTo: DrugEffectEnum.foggy),
      DrugRoute(ingredient: Ingredients.flumedicine, devolvesTo: DrugEffectEnum.euphoric),
    ]
  );

  static const DrugEffect tropicthunder = DrugEffect(
    name: "Tropic Thunder",
    displayColor: Colors.orange,
    multiplier: 0.46,
    type: EffectType.cosmetic,
    description: "Causes user's skin color to invert from light to dark or dark to light.",
    drugRoutes: [
      DrugRoute(ingredient: Ingredients.paracetamol, devolvesTo: DrugEffectEnum.toxic),
      DrugRoute(ingredient: Ingredients.gasoline, devolvesTo: DrugEffectEnum.sneaky),
      DrugRoute(ingredient: Ingredients.chili, devolvesTo: DrugEffectEnum.antigravity),
      DrugRoute(ingredient: Ingredients.battery, devolvesTo: DrugEffectEnum.munchies),
    ]
  );

  static const DrugEffect zombifying = DrugEffect(
    name: "Zombifying",
    displayColor: Colors.green,
    multiplier: 0.58,
    type: EffectType.cosmetic,
    description: "Causes user to have green skin and have a zombie-like voice.",
    drugRoutes: []
  );

  static const List<DrugEffectEnum> allEffects = [
    DrugEffectEnum.antigravity,
    DrugEffectEnum.athletic,
    DrugEffectEnum.balding,
    DrugEffectEnum.brighteyed,
    DrugEffectEnum.calming,
    DrugEffectEnum.caloriedense,
    DrugEffectEnum.cyclopean,
    DrugEffectEnum.disorienting,
    DrugEffectEnum.electrifying,
    DrugEffectEnum.energizing,
    DrugEffectEnum.euphoric,
    DrugEffectEnum.explosive,
    DrugEffectEnum.focused,
    DrugEffectEnum.foggy,
    DrugEffectEnum.gingeritis,
    DrugEffectEnum.glowing,
    DrugEffectEnum.jennerising,
    DrugEffectEnum.laxative,
    DrugEffectEnum.lethal,
    DrugEffectEnum.longfaced,
    DrugEffectEnum.munchies,
    DrugEffectEnum.paranoia,
    DrugEffectEnum.refreshing,
    DrugEffectEnum.schizophrenic,
    DrugEffectEnum.sedating,
    DrugEffectEnum.seizure,
    DrugEffectEnum.shrinking,
    DrugEffectEnum.slippery,
    DrugEffectEnum.smelly,
    DrugEffectEnum.sneaky,
    DrugEffectEnum.spicy,
    DrugEffectEnum.thoughtprovoking,
    DrugEffectEnum.toxic,
    DrugEffectEnum.tropicthunder,
    DrugEffectEnum.zombifying
  ];

  static const Map<Ingredient, DrugEffectEnum> starterMixes = {
    Ingredients.cuke: DrugEffectEnum.energizing,
    Ingredients.banana: DrugEffectEnum.gingeritis,
    Ingredients.paracetamol: DrugEffectEnum.sneaky,
    Ingredients.donut: DrugEffectEnum.caloriedense,
    Ingredients.viagra: DrugEffectEnum.tropicthunder,
    Ingredients.mouthwash: DrugEffectEnum.balding,
    Ingredients.flumedicine: DrugEffectEnum.sedating,
    Ingredients.gasoline: DrugEffectEnum.toxic,
    Ingredients.energydrink: DrugEffectEnum.athletic,
    Ingredients.motoroil: DrugEffectEnum.slippery,
    Ingredients.megabean: DrugEffectEnum.foggy,
    Ingredients.chili: DrugEffectEnum.spicy,
    Ingredients.battery: DrugEffectEnum.brighteyed,
    Ingredients.iodine: DrugEffectEnum.jennerising,
    Ingredients.addy: DrugEffectEnum.thoughtprovoking,
    Ingredients.horsesemen: DrugEffectEnum.longfaced,
  };
}

class Drug {
  final String name;
  final DrugType type;
  final double costPerSeed;
  final double suggestedAskingPrice;
  final double addictiveness;
  final List<DrugEffectEnum> effects;

  const Drug({
    required this.name, 
    required this.type, 
    required this.costPerSeed,
    required this.suggestedAskingPrice,
    required this.addictiveness,
    required this.effects
  });
}

class Drugs {
  static const Drug ogKush = Drug(
    name: "OG Kush", 
    type: DrugType.weed,
    costPerSeed: 30,
    suggestedAskingPrice: 38,
    addictiveness: 0,
    effects: [DrugEffectEnum.calming]
  );
  static const Drug sourDiesel = Drug(
    name: "Sour Diesel", 
    type: DrugType.weed,
    costPerSeed: 35,
    suggestedAskingPrice: 40,
    addictiveness: 10,
    effects: [DrugEffectEnum.refreshing]
  );
  static const Drug greenCrack = Drug( 
    name: "Green Crack", 
    type: DrugType.weed,
    costPerSeed: 40,
    suggestedAskingPrice: 43,
    addictiveness: 34,
    effects: [DrugEffectEnum.energizing]
  );
  static const Drug grandaddyPurple = Drug(
    name: "Grandaddy Purple", 
    type: DrugType.weed,
    costPerSeed: 45,
    suggestedAskingPrice: 44,
    addictiveness: 0,
    effects: [DrugEffectEnum.sedating]
  );
}

class Ingredient {
  final String name;
  final double price;
  final DrugEffectEnum createdEffect;

  const Ingredient({
    required this.name,
    required this.price,
    required this.createdEffect
  });
}

class Ingredients {
  static const Ingredient cuke = Ingredient(
    name: "Cuke",
    price: 2,
    createdEffect: DrugEffectEnum.energizing
  );

  static const Ingredient banana = Ingredient(
    name: "Banana",
    price: 2,
    createdEffect: DrugEffectEnum.gingeritis
  );

  static const Ingredient paracetamol = Ingredient(
    name: "Paracetamol",
    price: 3,
    createdEffect: DrugEffectEnum.sneaky
  );

  static const Ingredient donut = Ingredient(
    name: "Donut",
    price: 3,
    createdEffect: DrugEffectEnum.caloriedense
  );

  static const Ingredient viagra = Ingredient(
    name: "Viagra",
    price: 4,
    createdEffect: DrugEffectEnum.tropicthunder
  );

  static const Ingredient mouthwash = Ingredient(
    name: "Mouth Wash",
    price: 4,
    createdEffect: DrugEffectEnum.balding
  );

  static const Ingredient flumedicine = Ingredient(
    name: "Flu Medicine",
    price: 5,
    createdEffect: DrugEffectEnum.sedating
  );

  static const Ingredient gasoline = Ingredient(
    name: "Gasoline",
    price: 5,
    createdEffect: DrugEffectEnum.toxic
  );

  static const Ingredient energydrink = Ingredient(
    name: "Energy Drink",
    price: 6,
    createdEffect: DrugEffectEnum.athletic
  );

  static const Ingredient motoroil = Ingredient(
    name: "Motor Oil",
    price: 6,
    createdEffect: DrugEffectEnum.slippery
  );

  static const Ingredient megabean = Ingredient(
    name: "Mega Bean",
    price: 7,
    createdEffect: DrugEffectEnum.foggy
  );

  static const Ingredient chili = Ingredient(
    name: "Chili",
    price: 7,
    createdEffect: DrugEffectEnum.spicy
  );

  static const Ingredient battery = Ingredient(
    name: "Battery",
    price: 8,
    createdEffect: DrugEffectEnum.brighteyed
  );

  static const Ingredient iodine = Ingredient(
    name: "Iodine",
    price: 8,
    createdEffect: DrugEffectEnum.jennerising
  );

  static const Ingredient addy = Ingredient(
    name: "Addy",
    price: 9,
    createdEffect: DrugEffectEnum.thoughtprovoking
  );

  static const Ingredient horsesemen = Ingredient(
    name: "Horse Semen",
    price: 9,
    createdEffect: DrugEffectEnum.longfaced
  );
}

class DrugRoute {
  final Ingredient ingredient;
  final DrugEffectEnum devolvesTo;

  const DrugRoute({
    required this.ingredient,
    required this.devolvesTo
  });
}