import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common_widgets/common_gap.dart';
import 'package:portfolio/configs/fonts.dart';
import 'package:portfolio/configs/images/images.dart';

class TopPartL extends StatelessWidget {
  const TopPartL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _ProfileImageWidgets(),
        const Gap(),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: Get.width * 0.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  text: TextSpan(
                      text: 'Flutter Mobile Apps Developer at ',
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                    TextSpan(
                        text: 'Rexo IT',
                        style: Theme.of(context).textTheme.bodyText1)
                  ]))
            ],
          ),
        ),
      ],
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
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.teal.shade200,
          ),
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
