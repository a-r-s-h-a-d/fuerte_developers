import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/core/styles.dart';

class DailyReports extends StatelessWidget {
  const DailyReports({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.355,
      color: kwhite,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'DAILY REPORTS',
              style: textstyle1(textColor: kdarkIndigo),
            ),
            trailing: const Text(
              ':',
              style: TextStyle(
                  color: kdarkIndigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => kheight10,
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          kheight5,
                          Text(
                            'Symptoms of Covid to watch out for',
                            style: textstyle1(textColor: kdarkIndigo),
                          ),
                          const Text(
                            'March 06 , 09.01 PM',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: kgrey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * 0.135,
                        decoration: const BoxDecoration(
                          color: kdarkIndigo,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/vaccine.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
