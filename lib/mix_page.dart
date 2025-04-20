import 'package:flutter/material.dart';
import 'package:schedule_mixer/main.dart';

class MixPage extends StatelessWidget {
  const MixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainApp.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 75, left: 20, right: 20, bottom: 20),
            child: MainApp.button( 
              () {
                return Navigator.of(context).pop();
              },
              "Back",
              Colors.blue
            ),
          )
        ],
      ),
    );
  }
}