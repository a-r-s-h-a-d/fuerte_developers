import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/core/styles.dart';
import 'package:fuerte_developers/view/widgets/search_engine.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.size,
    required this.week,
  });

  final Size size;
  final Map<String, String> week;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '👋 Hello,',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: kwhite,
                  ),
                ),
                kheight5,
                Text(
                  'Gregory House',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: kwhite,
                  ),
                ),
              ],
            ),
            const CircleAvatar(),
          ],
        ),
        kheight20,
        //search engine
        SearchEngine(size: size),
        kheight20,
        //week
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        Text(
                          week.values.elementAt(index),
                          style: textstyle1(textColor: kwhite),
                        ),
                        kheight10,
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                // color: Colors.grey.withOpacity(0.5),
                                // spreadRadius: 1,
                                blurRadius: 1,
                                // offset: Offset(0, 3),
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor:
                                week.keys.elementAt(index) == '28' ||
                                        week.keys.elementAt(index) == '01' ||
                                        week.keys.elementAt(index) == '02'
                                    ? kwhite
                                    : kdirtyBlue,
                            child: Text(
                              week.keys.elementAt(index),
                              style: TextStyle(
                                fontSize: 12,
                                color: week.keys.elementAt(index) == '28' ||
                                        week.keys.elementAt(index) == '01' ||
                                        week.keys.elementAt(index) == '02'
                                    ? kdirtyBlue
                                    : kwhite,
                              ),
                            ),
                          ),
                        ),
                        kheight10,
                        Visibility(
                          visible: week.keys.elementAt(index) == '28' ||
                                  week.keys.elementAt(index) == '01' ||
                                  week.keys.elementAt(index) == '02'
                              ? false
                              : true,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CircleAvatar(
                                radius: 2.5,
                                backgroundColor: kwhite,
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                radius: 2.5,
                                backgroundColor: kwhite,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                separatorBuilder: (context, index) => kwidth25,
                itemCount: week.length),
          ),
        ),
      ],
    );
  }
}
