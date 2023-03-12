import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';

class SearchEngine extends StatelessWidget {
  const SearchEngine({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.06,
      decoration: const BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: const Icon(Icons.search),
            iconColor: kdirtyBlue,
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: kgrey.withOpacity(0.5),
              fontSize: 12,
            )),
      ),
    );
  }
}
