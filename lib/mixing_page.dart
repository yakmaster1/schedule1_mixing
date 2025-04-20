import 'package:flutter/material.dart';
import 'package:schedule_calculator/colors.dart';
import 'package:schedule_calculator/drug_provider.dart';

class MixingPage extends StatelessWidget {
  final VoidCallback switchPages;
  final DrugProvider drugProvider;
  
  const MixingPage({
    super.key,
    required this.switchPages,
    required this.drugProvider
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: MyColors.red,
          height: 60,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: switchPages,
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,                
                    )
                  ),
                ),
                Text(
                  "Mixing Results",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}