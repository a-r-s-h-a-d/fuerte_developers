import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/view/appointment/screen_appointment.dart';
import 'package:fuerte_developers/view/doctors/screen_doctors.dart';
import 'package:fuerte_developers/view/home/screen_home.dart';
import 'package:fuerte_developers/view/settings/screen_settings.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  List<Widget> tabs = [
    const ScreenHome(),
    const ScreenDoctors(),
    const ScreenAppointment(),
    const ScreenSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: tabController,
          labelColor: kamber,
          unselectedLabelColor: kgrey,
          indicatorColor: kamber,
          indicator: const UnderlineTabIndicator(
              insets: EdgeInsets.only(bottom: kTextTabBarHeight),
              borderSide: BorderSide(color: kamber, width: 3.0)),
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.feed_outlined)),
            Tab(icon: Icon(Icons.event)),
            Tab(icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
