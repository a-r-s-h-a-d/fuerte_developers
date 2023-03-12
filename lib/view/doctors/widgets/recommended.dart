import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/view/doctors/widgets/doctor_appointment.dart';
import 'package:fuerte_developers/view/widgets/heading.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kwhite,
      child: Column(
        children: [
          const Heading(title: 'RECOMMENDED'),
          ListView.separated(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => SizedBox(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.019),
                  DoctorAppointment(size: size),
                ],
              ),
            ),
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                thickness: 2.5,
                color: kgrey.withOpacity(0.1),
              ),
            ),
            itemCount: 2,
          )
        ],
      ),
    );
  }
}
