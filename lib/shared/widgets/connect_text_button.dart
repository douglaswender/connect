import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:flutter/material.dart';

class ConnectTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final bool isSelected;
  const ConnectTextButton({
    super.key,
    this.onPressed,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor:
                isSelected ? MaterialStatePropertyAll(AppColors.grey150) : null,
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 30, vertical: 14))),
        onPressed: onPressed,
        child: ConnectText(
          label,
          style: ConnectTextStyles.button(
            fontColor: AppColors.white,
          ),
        ));
  }
}
