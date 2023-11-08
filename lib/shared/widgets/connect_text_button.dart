import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:flutter/material.dart';

class ConnectTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  const ConnectTextButton({super.key, this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: ConnectText(
          label,
          style: ConnectTextStyles.button(
            fontColor: AppColors.white,
          ),
        ));
  }
}
