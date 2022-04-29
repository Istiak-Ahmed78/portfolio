import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/configs/fonts.dart';
import 'package:portfolio/coomon_widgets/common_gap.dart';
import 'package:portfolio/data/model/eduation_model.dart';

class EducationPart extends StatelessWidget {
  const EducationPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'My Educational Background',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontFamily: Fonts.exoItalic,
                ),
          ),
        ),
        const Gap(),
        const _TheTable()
      ],
    );
  }
}

class _TheTable extends StatelessWidget {
  const _TheTable({Key? key}) : super(key: key);

  Widget _buildBox(EducationQMOdel educationQMOdel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(educationQMOdel.endTime),
                  const SizedBox(
                    height: 35,
                    child: VerticalDivider(
                      color: Colors.white,
                      indent: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    educationQMOdel.startTime,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    educationQMOdel.degree,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    educationQMOdel.instituteName,
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(EducationQMOdel.myEducationWFicList.length,
          (index) => _buildBox(EducationQMOdel.myEducationWFicList[index])),
    );
  }
}

enum DividerTypp { dot, stright }
