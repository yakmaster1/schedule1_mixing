import 'package:flutter/material.dart';

class DrugInfoText extends StatelessWidget {
  final String info;
  final String header;
  
  const DrugInfoText({
    super.key,
    required this.info,
    required this.header
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$header: $info",
      style: const TextStyle(
        color: Colors.white, 
        fontSize: 20, 
      ),
    );
  }
}