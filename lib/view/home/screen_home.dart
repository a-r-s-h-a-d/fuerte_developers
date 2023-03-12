import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/constant.dart';
import 'package:fuerte_developers/core/strings.dart';
import 'package:fuerte_developers/view/home/widgets/daily_reports.dart';
import 'package:fuerte_developers/view/home/widgets/home_appbar.dart';
import 'package:fuerte_developers/view/home/widgets/services.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.315),
        child: AppBar(
          elevation: 0,
          backgroundColor: kdirtyBlue,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 60),
            //appbar
            child: HomeAppBar(size: size, week: week),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        children: [
          kheight15,
          //service
          Services(size: size),
          kheight15,
          //daily reports
          DailyReports(size: size)
        ],
      ),
    );
  }
}
