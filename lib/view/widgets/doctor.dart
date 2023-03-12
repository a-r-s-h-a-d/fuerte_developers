import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/core/styles.dart';

class Doctor extends StatelessWidget {
  const Doctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 32,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gregory House',
                style: textstyle1(textColor: kdarkIndigo),
              ),
              kheight5,
              Text(
                'Nephrologist',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: kgrey.withOpacity(0.5),
                ),
              ),
              kheight5,
              Row(
                children: [
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: kpaleblue,
                    child: Icon(
                      Icons.work,
                      size: 13,
                      color: kcuriousblue,
                    ),
                  ),
                  kwidth5,
                  Text(
                    '3 years',
                    style: TextStyle(
                      color: kgrey.withOpacity(0.8),
                      fontSize: 9,
                    ),
                  ),
                  kwidth15,
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: kpalepink,
                    child: Icon(
                      Icons.favorite,
                      size: 13,
                      color: korangyred,
                    ),
                  ),
                  kwidth5,
                  Text(
                    '67%',
                    style: TextStyle(
                      color: kgrey.withOpacity(0.8),
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
