import 'package:flutter/material.dart';
import 'package:schedule_mixer/main.dart';

class MixPage extends StatelessWidget {

  const MixPage({
    super.key,
  });

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
                Navigator.of(context).pop();
              },
              "Back",
              Colors.blue
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(30),
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              children: List.generate(2, (index) {
                return GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    color: Colors.amber,
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}