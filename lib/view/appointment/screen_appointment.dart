import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/view/appointment/widgets/pay_and_confirm.dart';
import 'package:fuerte_developers/view/appointment/widgets/payable_amount.dart';
import 'package:fuerte_developers/view/appointment/widgets/payment_options.dart';
import 'package:fuerte_developers/view/widgets/doctor.dart';

class ScreenAppointment extends StatelessWidget {
  const ScreenAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.085),
        child: AppBar(
          backgroundColor: kdirtyBlue,
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: kwhite,
          ),
          title: const Text(
            'APPOINTMENTS',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12,
              color: kwhite,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline_rounded,
                color: kwhite,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.015),
          Container(
            color: kwhite,
            height: size.height * 0.135,
            child: const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20, left: 5),
              //doctor details
              child: Doctor(),
            ),
          ),
          SizedBox(height: size.height * 0.015),
          //amount to be pay
          PayableAmount(size: size),
          SizedBox(height: size.height * 0.015),
          //payment option
          PaymentOptions(size: size)
        ],
      ),
      bottomNavigationBar: PayAndConfirm(size: size),
    );
  }
}
