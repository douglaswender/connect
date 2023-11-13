import 'package:connect/shared/app_colors.dart';
import 'package:connect/shared/app_images.dart';
import 'package:connect/shared/widgets/connect_app_bar.dart';
import 'package:connect/shared/widgets/connect_chip.dart';
import 'package:connect/shared/widgets/connect_image.dart';
import 'package:connect/shared/widgets/connect_primary_button.dart';
import 'package:connect/shared/widgets/connect_text/connect_text.dart';
import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:connect/shared/widgets/connect_text_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic> fetchFeed() async {
    final response =
        await http.get(Uri.parse('https://swapi.dev/api/people/1'));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Erro ao carregar o feed');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchFeed();
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = kIsWeb
        ? const EdgeInsets.symmetric(horizontal: 160, vertical: 50)
        : const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    return Scaffold(
      backgroundColor: AppColors.grey100,
      body: Stack(
        children: [
          Positioned(
            left: -20,
            top: -20,
            child: ConnectImage(AppImages.smoothTop, height: 600),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: padding,
              child: Column(
                children: [
                  const ConnectAppBar(),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ConnectChip(
                              label: 'No LLC Required, No Credit Check.',
                              icon: Icons.check,
                            ),
                            ConnectText(
                              'Welcome to YourBank Empowering Your ',
                              style: ConnectTextStyles.heading(
                                fontColor: AppColors.white,
                              ),
                              spans: [
                                ConnectText(
                                  'Financial Journey',
                                  style: ConnectTextStyles.heading(
                                    fontColor: AppColors.green600,
                                  ),
                                )
                              ],
                            ),
                            ConnectText(
                              'At YourBank, our mission is to provide comprehensive banking solutions that empower individuals and businesses to achieve their financial goals. We are committed to delivering personalized and innovative services that prioritize our customers\' needs.',
                              style: ConnectTextStyles.paragraph(
                                fontColor: AppColors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const ConnectPrimaryButton(label: 'Open Account')
                          ],
                        ),
                      ),
                      const Expanded(child: ConnectImage('assets/home.png'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
