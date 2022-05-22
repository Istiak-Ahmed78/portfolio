import 'package:flutter/material.dart';
import 'package:portfolio/common_widgets/common_gap.dart';
import 'package:portfolio/configs/fonts.dart';
import 'package:portfolio/common_widgets/common_line_tile.dart';

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
        Column(
          children: List.generate(
              EducationModel.myEducationWFicList.length,
              (index) => CommonTileLineTile(
                  baseTimeLineModel:
                      EducationModel.myEducationWFicList[index])),
        )
      ],
    );
  }
}

enum DividerTypp { dot, stright }
