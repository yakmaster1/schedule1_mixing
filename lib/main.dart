import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_mixer/drug.dart';
import 'package:schedule_mixer/drug_effect.dart';
import 'package:schedule_mixer/mix_page.dart';
import 'package:schedule_mixer/my_provider.dart';
import 'package:schedule_mixer/my_text.dart';
import 'package:schedule_mixer/tree_structure.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyProvider>(create: (_) => MyProvider()),
      ],
      child: const MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static Widget? listElement(MyProvider myProvider, int index) {
    if(index >= DrugEffect.allEffects.length) return null;
    final DrugEffect effect = DrugEffect.allEffects[index];

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Checkbox(
              value: myProvider.selectedEffects.contains(effect), 
              onChanged: (bool? _) => myProvider.addEffect(effect)
            ),
            MyText(effect.displayName, color: effect.displayColor)
          ],
        ),
      ),
    );    
  }

  static Widget button(VoidCallback onPressed, String text, Color color) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(color),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  static const Color backgroundColor = Color.fromARGB(255, 35, 35, 35);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<MyProvider>(
        builder: (context, myProvider, child) => Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    button(
                      () => myProvider.clearEffects(),
                      "Clear",
                      Colors.red
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: button(
                        () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const MixPage()),
                        ),
                        "Search",
                        Colors.green
                      ),
                    ),
                    button(
                      () {
                        Drug drug = Drug.allDrugs[0];
                        TreeElement root = TreeElement(value: MixedDrug.convertToMixed(drug));
                        DrugTree.initDrugTree(root);
                      },
                      "TestTree",
                      Colors.pink
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: DrugEffect.allEffects.length,
                  itemBuilder: (context, index) {
                    final Widget? widget = listElement(myProvider, index);
                    return widget;
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
