import 'package:flutter/material.dart';
import 'package:schedule_calculator/colors.dart';

class DrugLabel extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;
  
  const DrugLabel({
    super.key,
    required this.onPressed,
    required this.isSelected
  });

  static const double size = 110;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.white : MyColors.gray,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}