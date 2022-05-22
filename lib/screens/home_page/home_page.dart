import 'package:flutter/material.dart';
import 'package:portfolio/common_widgets/common_gap.dart';
import 'package:portfolio/configs/colors.dart';
import 'package:portfolio/screens/home_page/widgets/widgets.dart';

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
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          children: const [
            TopPartL(),
            Gap(
              times: 3,
            ),
            BioPartSmall(),
            Gap(
              times: 2,
            ),
            EducationPart(),
            Gap(
              times: 2,
            ),
            Projects()
          ],
        ),
      ),
    );
  }
}
