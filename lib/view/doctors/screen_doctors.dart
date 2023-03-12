import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/view/doctors/widgets/doctor_appointment.dart';
import 'package:fuerte_developers/view/doctors/widgets/recommended.dart';
import 'package:fuerte_developers/view/widgets/heading.dart';
import 'package:fuerte_developers/view/widgets/search_engine.dart';

class ScreenDoctors extends StatelessWidget {
  const ScreenDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.2),
        child: AppBar(
          elevation: 0,
          backgroundColor: kdirtyBlue,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 40),
            //appbar
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: kwhite,
                        size: 18,
                      ),
                    ),
                    const Text(
                      'DOCTORS',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        color: kwhite,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.508),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.info_outline_rounded,
                          color: kwhite,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.height * 0.13,
                  color: kdirtyBlue,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 35, top: 28),
                    child: SearchEngine(
                      size: size,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          //doctors nearby
          kheight15,
          Column(
            children: [
              Container(
                color: kwhite,
                child: const Heading(title: 'DOCTORS NEARBY'),
              ),
              DoctorAppointment(size: size),
            ],
          ),
          kheight15,
          //Recommended
          Recommended(size: size),
        ],
      ),
    );
  }
}
