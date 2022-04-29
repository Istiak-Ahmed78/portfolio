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
      body: MainPart(),
    );
  }
}

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          LayoutBuilder(builder: (context, constrain) {
            if (constrain.maxWidth < 600) {
              return const _ProfileImageWidgets();
            } else {
              return const _LargeSizeHandle();
            }
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: _size.height * 0.4,
                width: _size.width * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(MyImages.profileImage))),
              ),
              Column(
                children: const [
                  Text(
                    'Istiak Ahmed',
                    style: TextStyle(
                        color: Colors.white, fontFamily: Fonts.ubuntu),
                  )
                ],
              ),
            ],
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
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(MyImages.profileImage))),
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
