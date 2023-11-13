import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/app_images.dart';
import 'package:connect/shared/widgets/connect_image.dart';
import 'package:connect/shared/widgets/connect_primary_button.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:connect/shared/widgets/connect_text_button.dart';
import 'package:flutter/material.dart';

class ConnectAppBar extends StatefulWidget {
  const ConnectAppBar({super.key});

  @override
  State<ConnectAppBar> createState() => _ConnectAppBarState();
}

class _ConnectAppBarState extends State<ConnectAppBar> {
  int selectedIndex = 0;
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
            Row(
              children: [
                ConnectTextButton(
                  label: 'Home',
                  isSelected: selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                ConnectTextButton(
                  label: 'Careers',
                  isSelected: selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                ConnectTextButton(
                  label: 'About',
                  isSelected: selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                ),
                ConnectTextButton(
                  label: 'Security',
                  isSelected: selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                ConnectTextButton(
                  label: 'Sign Up',
                  onPressed: () {},
                ),
                ConnectPrimaryButton(label: 'Login')
              ],
            )
          ],
        ),
      ),
    );
  }
}
