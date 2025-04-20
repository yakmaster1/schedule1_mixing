import 'package:flutter/material.dart';

enum DrugEffectType {
  ability,
  cosmetic
}

class DrugEffect {
  final String displayName;
  final Color displayColor;
  final double multiplier;
  final DrugEffectType ability;
  final String description;
  
  const DrugEffect({
    required this.displayName,
    required this.displayColor,
    required this.multiplier,
    required this.ability,
    required this.description
  });

  static const DrugEffect antigravity = DrugEffect(
    displayName: "Anti-Gravity",
    displayColor: Color.fromARGB(255, 35, 91, 203),
    multiplier: 0.54,
    ability: DrugEffectType.ability,
    description: "Causes user to jump higher."
  );

  static const DrugEffect athletic = DrugEffect(
    displayName: "Athletic",
    displayColor: Color.fromARGB(255, 117, 200, 253),
    multiplier: 0.32,
    ability: DrugEffectType.ability,
    description: "Causes user to run faster."
  );

  static const DrugEffect balding = DrugEffect(
    displayName: "Balding",
    displayColor: Color.fromARGB(255, 199, 146, 50),
    multiplier: 0.3,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to be bald."
  );

  static const DrugEffect brighteyed = DrugEffect(
    displayName: "Bright-Eyed",
    displayColor: Color.fromARGB(255, 190, 247, 253),
    multiplier: 0.4,
    ability: DrugEffectType.ability,
    description: "Causes user's eyes to shine flashlight beams."
  );

  static const DrugEffect calming = DrugEffect(
    displayName: "Calming",
    displayColor: Color.fromARGB(255, 254, 208, 155),
    multiplier: 0.1,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have chromatic aberration around screen."
  );

  static const DrugEffect caloriedense = DrugEffect(
    displayName: "Calorie-Dense",
    displayColor: Color.fromARGB(255, 254, 132, 244),
    multiplier: 0.28,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to appear fat."
  );

  static const DrugEffect cyclopean = DrugEffect(
    displayName: "Cyclopean",
    displayColor: Color.fromARGB(255, 254, 193, 116),
    multiplier: 0.56,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to only have one eye."
  );

  static const DrugEffect disorienting = DrugEffect(
    displayName: "Disorienting",
    displayColor: Color.fromARGB(255, 254, 117, 81),
    multiplier: 0.0,
    ability: DrugEffectType.ability,
    description: "Causes camera controls for up/down, and movement controls for left/right to be inverted. Forward/backward movement controls will also invert at random for a few steps."
  );

  static const DrugEffect electrifying = DrugEffect(
    displayName: "Electrifying",
    displayColor: Color.fromARGB(255, 85, 200, 253),
    multiplier: 0.5,
    ability: DrugEffectType.cosmetic,
    description: "Causes lightning effect on user."
  );

  static const DrugEffect energizing = DrugEffect(
    displayName: "Energizing",
    displayColor: Color.fromARGB(255, 154, 254, 109),
    multiplier: 0.22,
    ability: DrugEffectType.ability,
    description: "Causes user to run faster."
  );

  static const DrugEffect euphoric = DrugEffect(
    displayName: "Euphoric",
    displayColor: Color.fromARGB(255, 254, 234, 116),
    multiplier: 0.18,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a euphoric/happy high and smile."
  );

  static const DrugEffect explosive = DrugEffect(
    displayName: "Explosive",
    displayColor: Color.fromARGB(255, 254, 75, 64),
    multiplier: 0.0,
    ability: DrugEffectType.ability,
    description: "Causes user to explode after ticking countdown, killing the user and damaging NPCs in the vicinity."
  );

  static const DrugEffect focused = DrugEffect(
    displayName: "Focused",
    displayColor: Color.fromARGB(255, 117, 241, 253),
    multiplier: 0.16,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have chromatic aberration around screen."
  );

  static const DrugEffect foggy = DrugEffect(
    displayName: "Foggy",
    displayColor: Color.fromARGB(255, 176, 176, 175),
    multiplier: 0.36,
    ability: DrugEffectType.cosmetic,
    description: "Causes a fog cloud effect around user. Also causes a global fog effect, significantly limiting visibility."
  );

  static const DrugEffect gingeritis = DrugEffect(
    displayName: "Gingeritis",
    displayColor: Color.fromARGB(255, 254, 136, 41),
    multiplier: 0.2,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have red hair."
  );

  static const DrugEffect glowing = DrugEffect(
    displayName: "Glowing",
    displayColor: Color.fromARGB(255, 133, 228, 89),
    multiplier: 0.48,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a radioactive glow."
  );

  static const DrugEffect jennerising = DrugEffect(
    displayName: "Jennerising",
    displayColor: Color.fromARGB(255, 254, 141, 248),
    multiplier: 0.42,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to appear female."
  );

  static const DrugEffect laxative = DrugEffect(
    displayName: "Laxative",
    displayColor: Color.fromARGB(255, 118, 60, 37),
    multiplier: 0.0,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to constantly soil themselves."
  );

  static const DrugEffect lethal = DrugEffect(
    displayName: "Lethal",
    displayColor: Color.fromARGB(255, 159, 43, 34),
    multiplier: 0.0,
    ability: DrugEffectType.ability,
    description: "Causes user to vomit and then die."
  );

  static const DrugEffect longfaced = DrugEffect(
    displayName: "Long Faced",
    displayColor: Color.fromARGB(255, 254, 217, 97),
    multiplier: 0.52,
    ability: DrugEffectType.cosmetic,
    description: "Causes user's neck and face to grow."
  );

  static const DrugEffect munchies = DrugEffect(
    displayName: "Munchies",
    displayColor: Color.fromARGB(255, 201, 110, 87),
    multiplier: 0.12,
    ability: DrugEffectType.cosmetic,
    description: ""
  );

  static const DrugEffect paranoia = DrugEffect(
    displayName: "Paranoia",
    displayColor: Color.fromARGB(255, 196, 103, 98),
    multiplier: 0.0,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a bad high. Also makes NPCs appear to stare at the user from long distances."
  );

  static const DrugEffect refreshing = DrugEffect(
    displayName: "Refreshing",
    displayColor: Color.fromARGB(255, 178, 254, 152),
    multiplier: 0.14,
    ability: DrugEffectType.cosmetic,
    description: ""
  );

  static const DrugEffect schizophrenic = DrugEffect(
    displayName: "Schizophrenic",
    displayColor: Color.fromARGB(255, 100, 90, 253),
    multiplier: 0.0,
    ability: DrugEffectType.ability,
    description: "Causes user to run backwards while saying 'oh no' (muffled) and hear muffled voices. Loud heart beat, open mouth frown, and squinting eyes. User's vision will also randomly pulse."
  );

  static const DrugEffect sedating = DrugEffect(
    displayName: "Sedating",
    displayColor: Color.fromARGB(255, 107, 95, 216),
    multiplier: 0.26,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a vignette around screen and mouse smoothing."
  );

  static const DrugEffect seizure = DrugEffect(
    displayName: "Seizure-Inducing",
    displayColor: Color.fromARGB(255, 254, 233, 0),
    multiplier: 0.0,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a seizure and shake on the ground."
  );

  static const DrugEffect shrinking = DrugEffect(
    displayName: "Shrinking",
    displayColor: Color.fromARGB(255, 182, 254, 218),
    multiplier: 0.6,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to shrink."
  );

  static const DrugEffect slippery = DrugEffect(
    displayName: "Slippery",
    displayColor: Color.fromARGB(255, 162, 223, 253),
    multiplier: 0.34,
    ability: DrugEffectType.ability,
    description: "Causes user to have sluggish, slippery movement."
  );

  static const DrugEffect smelly = DrugEffect(
    displayName: "Smelly",
    displayColor: Color.fromARGB(255, 125, 188, 49),
    multiplier: 0.0,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have a stinky cloud around them."
  );

  static const DrugEffect sneaky = DrugEffect(
    displayName: "Sneaky",
    displayColor: Color.fromARGB(255, 123, 123, 123),
    multiplier: 0.24,
    ability: DrugEffectType.ability,
    description: "Causes the police '?' meter to fill up half as fast, and increases size of pickpocket success areas."
  );

  static const DrugEffect spicy = DrugEffect(
    displayName: "Spicy",
    displayColor: Color.fromARGB(255, 254, 107, 76),
    multiplier: 0.38,
    ability: DrugEffectType.cosmetic,
    description: "Causes user's head to light on fire."
  );

  static const DrugEffect thoughtprovoking = DrugEffect(
    displayName: "Thought-Provoking",
    displayColor: Color.fromARGB(255, 254, 160, 203),
    multiplier: 0.44,
    ability: DrugEffectType.cosmetic,
    description: "Causes user's head to grow in size."
  );

  static const DrugEffect toxic = DrugEffect(
    displayName: "Toxic",
    displayColor: Color.fromARGB(255, 95, 154, 49),
    multiplier: 0.0,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to vomit."
  );

  static const DrugEffect tropicthunder = DrugEffect(
    displayName: "Tropic Thunder",
    displayColor: Color.fromARGB(255, 254, 159, 71),
    multiplier: 0.46,
    ability: DrugEffectType.cosmetic,
    description: "Causes user's skin color to invert from light to dark or dark to light."
  );

  static const DrugEffect zombifying = DrugEffect(
    displayName: "Zombifying",
    displayColor: Color.fromARGB(255, 113, 171, 93),
    multiplier: 0.58,
    ability: DrugEffectType.cosmetic,
    description: "Causes user to have green skin and have a zombie-like voice."
  );

  static const List<DrugEffect> allEffects = [
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
  ];
}