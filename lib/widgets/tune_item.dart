

import 'package:flutter/cupertino.dart';

import '../models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.tune,
  });
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: tune.playSound,
        child: Container(
          color: tune.color,
          height: 100,
          width: double.infinity,
        ),
      ),
    );
  }
}
