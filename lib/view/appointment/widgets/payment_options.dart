import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/styles.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      height: size.height * 0.2,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PAYMENT OPTIONS',
              style: textstyle1(textColor: kdarkIndigo),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.05,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kgrey.withOpacity(0.5),
                  width: 0.5,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
            Container(
              height: size.height * 0.05,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: kgrey.withOpacity(0.5),
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
