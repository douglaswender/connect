import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:flutter/material.dart';

class ConnectChip extends StatelessWidget {
  final IconData? icon;
  final String label;
  const ConnectChip({super.key, this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icon,
                color: AppColors.green600,
              ),
            ),
          ConnectText(
            label,
            style: ConnectTextStyles.paragraph(fontColor: AppColors.white),
          )
        ],
      ),
    );
  }
}
