import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/styles.dart';

class PayAndConfirm extends StatelessWidget {
  const PayAndConfirm({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.11,
      color: kwhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: size.height * 0.065,
          decoration: BoxDecoration(
            color: koragePeel,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            'Pay & Confirm',
            style: textstyle1(textColor: kwhite),
          )),
        ),
      ),
    );
  }
}
