// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:connect/shared/app_colors.dart';

class ConnectPrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final double? width;
  const ConnectPrimaryButton({
    Key? key,
    required this.label,
    this.onTap,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.green600),
        ),
        onPressed: onTap,
        child: ConnectText(
          label,
          style: ConnectTextStyles.button(fontColor: AppColors.black),
        ),
      ),
    );
  }
}
