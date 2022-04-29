import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/configs/colors.dart';
import 'package:portfolio/configs/fonts.dart';
import 'package:portfolio/configs/images/images.dart';
import 'package:portfolio/coomon_widgets/common_gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.nightThemeColor,
      body: SafeArea(child: MainPart()),
    );
  }
}

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _ProfileImageWidgets(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Hello, ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                            children: [
                              TextSpan(
                                text: 'I\'m',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Istiak Ahmed',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Fonts.exoItalic,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Flutter Mobile Apps Developer at ',
                              children: [TextSpan(text: 'Rexo IT')]))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ProfileImageWidgets extends StatelessWidget {
  const _ProfileImageWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
        const Positioned(
          left: 5,
          top: 5,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(MyImages.profileImage),
          ),
        ),
      ],
    );
  }
}

class _LargeSizeHandle extends StatelessWidget {
  const _LargeSizeHandle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Get.height,
          width: Get.width * 0.5,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(MyImages.profileImage))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Gap(
                hight: Get.height * 0.1,
              ),
              const Text(
                'About',
                style: TextStyle(color: Colors.grey),
              ),
              Gap(
                hight: Get.height * 0.2,
              ),
              const Text(
                'Achievements',
                style: TextStyle(color: Colors.grey),
              ),
              Gap(
                hight: Get.height * 0.2,
              ),
              const Text(
                'Academic History',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
