import 'package:flutter/material.dart';
import 'package:schedule_calculator/colors.dart';

class ProductPage extends StatelessWidget {
  final VoidCallback switchPages;
  
  const ProductPage({
    super.key,
    required this.switchPages
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
                  onPressed: switchPages,
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,                
                  )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}