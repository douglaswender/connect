import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/app_images.dart';
import 'package:connect/shared/widgets/connect_image.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:connect/shared/widgets/connect_text_button.dart';
import 'package:flutter/material.dart';

class ConnectAppBar extends StatelessWidget {
  const ConnectAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
          color: AppColors.grey110,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.grey150,
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Row(
          children: [
            ConnectImage(
              AppImages.logo,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 8,
            ),
            ConnectText(
              'Connect',
              style: ConnectTextStyles.paragraph(
                fontColor: AppColors.white,
              ),
            ),
            const Spacer(),
            ConnectTextButton(
              label: 'Home',
              onPressed: () {},
            ),
            ConnectTextButton(
              label: 'Careers',
              onPressed: () {},
            ),
            ConnectTextButton(
              label: 'About',
              onPressed: () {},
            ),
            ConnectTextButton(
              label: 'Security',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
