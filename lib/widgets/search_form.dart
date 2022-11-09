
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14)),
        width: size.width - 32,
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: TextFormField(
          decoration: InputDecoration(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.orange,
            ),
            border: InputBorder.none,
            hintText: 'What are you looking for?',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ));
  }
}
