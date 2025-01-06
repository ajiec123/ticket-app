import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDevider;
  const AppLayoutBuilderWidget({super.key, required this.randomDevider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print("${constraints.constrainWidth().floor()}");
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomDevider).floor(),
              (index) => const SizedBox(
                    width: 3,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color: Colors.white,
                    )),
                  )),
        );
      },
    );
  }
}
