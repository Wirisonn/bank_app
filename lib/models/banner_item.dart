import 'package:bank_application/models/appbanner.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 5, 42, 72), Colors.blue])),
    );
  }
}
