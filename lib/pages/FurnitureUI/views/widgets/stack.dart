import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackCard extends StatelessWidget {
  final int num;
  final Widget child;
  final double offset;

  const StackCard(
      {super.key, required this.num, required this.child, this.offset = 10.0});

  @override
  Widget build(BuildContext context) => Stack(
        children: List<Widget>.generate(
            num - 1,
            (val) => Positioned(
                bottom: val * offset,
                left: val * offset,
                top: (num - val - 1) * offset,
                right: (num - val - 1) * offset,
                child: Card(child: Container()))).toList()
          ..add(
            Padding(
              child: Card(child: child),
              padding: EdgeInsets.only(
                  bottom: (num - 1) * offset, left: (num - 1) * offset),
            ),
          ),
      );
}
