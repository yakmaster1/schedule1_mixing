enum DrugType {
  weed,
}

enum DrugEffect {
  calming,
  refreshing,
  energizing,
  sedating
}

class Drug {
  final String name;
  final DrugType type;
  final double costPerSeed;
  final double suggestedAskingPrice;
  final List<DrugEffect> effects;

  const Drug({
    required this.name, 
    required this.type, 
    required this.costPerSeed,
    required this.suggestedAskingPrice,
    required this.effects
  });
}

class Drugs {
  static const Map<DrugEffect, String> allEffects = {
    DrugEffect.calming: "Calming",
    DrugEffect.refreshing: "Refreshing",
    DrugEffect.energizing: "Energizing",
    DrugEffect.sedating: "Sedating"    
  };
  
  static const ogKush = Drug(
    name: "OG Kush", 
    type: DrugType.weed,
    costPerSeed: 30,
    suggestedAskingPrice: 38,
    effects: [DrugEffect.calming]
  );
  static const sourDiesel = Drug(
    name: "Sour Diesel", 
    type: DrugType.weed,
    costPerSeed: 35,
    suggestedAskingPrice: 40,
    effects: [DrugEffect.refreshing]
  );
  static const greenCrack = Drug( 
    name: "Green Crack", 
    type: DrugType.weed,
    costPerSeed: 40,
    suggestedAskingPrice: 43,
    effects: [DrugEffect.energizing]
  );
  static const grandaddyPurple = Drug(
    name: "Grandaddy Purple", 
    type: DrugType.weed,
    costPerSeed: 45,
    suggestedAskingPrice: 44,
    effects: [DrugEffect.sedating]
  );

  static const List<Drug> allDrugs = [
    ogKush,
    sourDiesel,
    greenCrack,
    grandaddyPurple,
  ];
}