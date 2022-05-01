import 'package:flutter/material.dart';
import 'package:portfolio/configs/fonts.dart';

class BioPartLarge extends StatelessWidget {
  const BioPartLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RichText(
        text: TextSpan(
          text: '     Hi,',
          style: const TextStyle(fontSize: 20, fontFamily: Fonts.roboto),
          children: [
            TextSpan(text: _myBio, style: Theme.of(context).textTheme.bodyText2)
          ],
        ),
      ),
    );
  }

  final _myBio =
      ' I\'m Mobashsherul Islam Istiak(Istiak Ahmed), a student of Electrical and Electronic Engineering. I\'m a Flutter mobile apps developer. I developed many apps untill now. I currently have one and half years of working experience developing mobile apps.';
}
