import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/styles.dart';
import 'package:fuerte_developers/view/widgets/doctor.dart';
import '../../../core/colors.dart';

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.20,
      color: kwhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //doctor details
          const Doctor(),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  children: const [
                    Text(
                      'Total Fee',
                      style: TextStyle(
                        color: kgrey,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "\$80",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.06,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: koragePeel,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Make an appointment',
                    style: textstyle1(textColor: kwhite),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
