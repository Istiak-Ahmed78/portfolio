import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonTileLineTile extends StatelessWidget {
  final _BaseTimeLineModel baseTimeLineModel;
  const CommonTileLineTile({
    Key? key,
    required this.baseTimeLineModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Text(baseTimeLineModel.tileDuration.to),
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
                    baseTimeLineModel.tileDuration.from,
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
                    baseTimeLineModel.title,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    baseTimeLineModel.subtitle,
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
}

abstract class _BaseTimeLineModel {
  String title, subtitle;
  TileDuration tileDuration;
  _BaseTimeLineModel(this.title, this.subtitle, this.tileDuration);
}

class EducationModel extends _BaseTimeLineModel {
  final String degree, institute;
  final TileDuration degreeDuration;

  EducationModel(
      {required this.degree,
      required this.institute,
      required this.degreeDuration})
      : super(
          degree,
          degree,
          degreeDuration,
        );
  static List<EducationModel> myEducationWFicList = [
    EducationModel(
      degree: 'BSC in Electrical and Electronice Engineering',
      degreeDuration: TileDuration('2020', 'Present'),
      institute: 'University of chittagong, Chittagong, Bangladesh',
    ),
    EducationModel(
      degree: 'HSC',
      degreeDuration: TileDuration('2017', '2019'),
      institute: 'Police lines school and college, bogra',
    ),
    EducationModel(
      degree: 'SSC',
      degreeDuration: TileDuration('2014', '2017'),
      institute: 'Habibpur Fazil Madrasah',
    )
  ];
}

class ExperienceModelTileModel extends _BaseTimeLineModel {
  String jobTitle, institute;
  TileDuration jobDuration;
  ExperienceModelTileModel({
    required this.jobTitle,
    required this.institute,
    required this.jobDuration,
  }) : super(
          jobTitle,
          institute,
          jobDuration,
        );
}

class TileDuration {
  final String from, to;
  TileDuration(this.from, this.to);
}
