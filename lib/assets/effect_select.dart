import 'package:flutter/material.dart';

class EffectSelect extends StatelessWidget {
  final Color color;
  final String name;
  final VoidCallback onPressed;
  final bool isCurrentInfo;
  final Function(bool?) onCheckbox;
  final bool isChecked;
  
  const EffectSelect({
    super.key,
    required this.color,
    required this.name,
    required this.onPressed,
    required this.isCurrentInfo,
    required this.onCheckbox,
    required this.isChecked
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked, 
          onChanged: onCheckbox
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: GestureDetector(
            onTap: onPressed,
            child: Text(
              name,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Visibility(
                visible: isCurrentInfo,
                child: const Icon(
                  Icons.info,
                  color: Colors.green,
                )
              ),
            ),
          ),
        )
      ],
    );
  }
}