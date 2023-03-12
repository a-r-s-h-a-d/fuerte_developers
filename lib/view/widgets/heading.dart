import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';
import 'package:fuerte_developers/core/styles.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: textstyle1(textColor: kdirtyBlue),
      ),
      trailing: Text(
        'See all',
        style: textstyle1(textColor: kamber),
      ),
    );
  }
}
