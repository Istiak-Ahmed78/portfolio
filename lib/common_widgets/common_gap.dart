import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final int? times;
  final double? hight;
  const Gap({Key? key, this.times = 1, this.hight})
      : assert(times == null || hight == null,
            'Times and height cannot be included at the same time.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (times != null) {
      child = SizedBox(
        height: times! * 20,
      );
    } else if (hight != null) {
      child = SizedBox(
        height: hight,
      );
    } else {
      child = const SizedBox(
        height: 20,
      );
    }
    return child;
  }
}
