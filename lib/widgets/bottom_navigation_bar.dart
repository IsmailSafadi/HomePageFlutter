
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/collection.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/calendar.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/disc.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/heart.svg')),
          ],
        ),
      ),
    );
  }
}