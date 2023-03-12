import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/styles.dart';

class PayableAmount extends StatelessWidget {
  const PayableAmount({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.255,
      color: kwhite,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: textstyle1(textColor: kdarkIndigo),
                ),
                Text(
                  '\$80',
                  style: textstyle1(textColor: kdarkIndigo),
                )
              ],
            ),
            Text(
              'Session fee for 30 min',
              style: textstyle2(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'To pay',
                  style: textstyle1(textColor: kdarkIndigo),
                ),
                Text(
                  '\$80',
                  style: textstyle1(textColor: kdarkIndigo),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: kgrey.withOpacity(.2),
            ),
            Container(
              height: size.height * 0.045,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kaquaHaze,
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: SvgPicture.asset(
                    'assets/svg/coupons.svg',
                    height: size.height * 0.03,
                  ),
                ),
                title: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Use Promo Code',
                      style: textstyle1(textColor: kdarkIndigo),
                    ),
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
