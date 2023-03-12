import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/core/strings.dart';
import 'package:fuerte_developers/core/styles.dart';
import 'package:fuerte_developers/view/widgets/heading.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      height: size.height * 0.2,
      child: Column(
        children: [
          const Heading(title: 'SERVICES'),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: size.height * 0.125,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: knebula,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: kneptune,
                            child: SvgPicture.asset(
                              services.values.elementAt(index),
                              height: 20,
                            ),
                          ),
                        ),
                        kheight10,
                        Text(
                          services.keys.elementAt(index),
                          style: textstyle1(textColor: kgrey),
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) => kwidth25,
                itemCount: 4),
          ),
        ],
      ),
    );
  }
}
