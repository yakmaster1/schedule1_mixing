import 'package:flutter/material.dart';
import 'package:schedule_calculator/assets/drug_info_text.dart';
import 'package:schedule_calculator/assets/drug_label.dart';
import 'package:schedule_calculator/assets/effect_select.dart';
import 'package:schedule_calculator/colors.dart';
import 'package:schedule_calculator/drug_algorithm.dart';
import 'package:schedule_calculator/drug_provider.dart';
import 'package:schedule_calculator/drugs.dart';

class ProductPage extends StatelessWidget {
  final VoidCallback switchPages;
  final DrugProvider drugProvider;
  
  const ProductPage({
    super.key,
    required this.switchPages,
    required this.drugProvider
  });

  Widget drugRow(Widget element1, Widget element2) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: element1,
          ),
          element2
        ],
      ),
    );
  }

  String getEffectType(EffectType? type) {
    switch (type) {
      case EffectType.ability: return "Ability";
      case EffectType.cosmetic: return "Cosmetic";
      case EffectType.none: return "None";
      default: return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    final DrugEffect effectInfo = DrugEffects.getDrugEffectFromEnum(drugProvider.effectInfo());
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: MyColors.red,
          height: 60,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Product Manager",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
                IconButton(
                  onPressed: () {
                    List<List<DrugTreeNode>> allPaths = [];
                    
                    for (var effect in drugProvider.selectedEffects) {
                      final root = DrugTreeNode(value: effect);
                      DrugAlgorithm.fingAllPaths(root, root, 5);
                      final paths = DrugAlgorithm.extractPaths(root);
                      allPaths.addAll(paths);
                    }
                    allPaths.sort((a, b) => a.length.compareTo(b.length));
                    for (var path in allPaths) {
                      final names = path.map((node) => DrugEffects.getDrugEffectFromEnum(node.value).name).toList();
                      print(names);
                    }
                  },
                  icon: const Icon(
                    Icons.grid_3x3,
                    color: Colors.green,                
                  )
                ),
                IconButton(
                  onPressed: switchPages,
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,                
                  )
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    drugRow(
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.ogKush),
                        isSelected: drugProvider.drugContains(Drugs.ogKush)
                      ),
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.sourDiesel),
                        isSelected: drugProvider.drugContains(Drugs.sourDiesel)
                      )
                    ),
                    drugRow(
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.greenCrack),
                        isSelected: drugProvider.drugContains(Drugs.greenCrack)
                      ),
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.grandaddyPurple),
                        isSelected: drugProvider.drugContains(Drugs.grandaddyPurple)
                      )
                    ),
                    drugRow(
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.ogKush),
                        isSelected: drugProvider.drugContains(Drugs.ogKush)
                      ),
                      DrugLabel(
                        onPressed: () => drugProvider.addDrug(Drugs.ogKush),
                        isSelected: drugProvider.drugContains(Drugs.ogKush)
                      )
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: MyColors.gray,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 25),
                          child: Text(
                            "Effects",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: DrugEffects.allEffects.length,
                            itemBuilder: (context, index) {
                              final DrugEffectEnum effectEnum = DrugEffects.allEffects[index];
                              final DrugEffect effect = DrugEffects.getDrugEffectFromEnum(effectEnum);

                              return EffectSelect(
                                color: effect.displayColor,
                                name: effect.name,
                                onPressed: () {
                                  drugProvider.setDrugEffectInfo(effectEnum);
                                },
                                isCurrentInfo: (drugProvider.currentEffectInfo() == effectEnum),
                                onCheckbox: (bool? _) {
                                  drugProvider.addEffect(effectEnum);
                                },
                                isChecked: drugProvider.effectContains(effectEnum)
                              );
                            }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: (effectInfo != DrugEffects.none),
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Text(
                            effectInfo.name,
                            style: TextStyle(
                              color: effectInfo.displayColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        DrugInfoText(header: "Multiplier", info: effectInfo.multiplier.toString()),
                        DrugInfoText(header: "Type", info: getEffectType(effectInfo.type)),
                        DrugInfoText(header: "Description", info: effectInfo.description),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}