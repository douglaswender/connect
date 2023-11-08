import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/app_images.dart';
import 'package:connect/shared/widgets/connect_app_bar.dart';
import 'package:connect/shared/widgets/connect_image.dart';
import 'package:connect/shared/widgets/connect_primary_button.dart';
import 'package:connect/shared/widgets/connect_text_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = kIsWeb
        ? const EdgeInsets.symmetric(horizontal: 160, vertical: 50)
        : const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    return Scaffold(
      backgroundColor: AppColors.grey100,
      body: SingleChildScrollView(
        child: Padding(
          padding: padding,
          child: Column(
            children: [
              ConnectAppBar(),
              Text('Navbar'),
              ConnectTextButton(
                label: 'label',
                onPressed: () => print('label'),
              ),
              ConnectPrimaryButton(
                label: 'Entrar',
                width: double.maxFinite,
                onTap: () {
                  print('teste');
                },
              ),
              ConnectImage(AppImages.smoothTop),
            ],
          ),
        ),
      ),
    );
  }
}
