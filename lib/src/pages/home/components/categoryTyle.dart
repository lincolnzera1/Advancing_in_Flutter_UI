import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_redemption/src/config/custom_colors.dart';

class CategoryTyle extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategoryTyle(
      {super.key,
      required this.category,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          decoration: BoxDecoration(
              color: isSelected
                  ? CustomColors.customSwatchColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            "$category",
            style: TextStyle(
                color:
                    isSelected ? Colors.white : CustomColors.customContrastColor,
                fontWeight: FontWeight.bold,
                fontSize: isSelected ? 16 : 14),
          ),
        ),
      ),
    );
  }
}
