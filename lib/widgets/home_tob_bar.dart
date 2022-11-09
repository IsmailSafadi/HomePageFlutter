
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Current location',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Icon(size: 14, Icons.pin_drop)),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Surakarta')
                ],
              )
            ],
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.5),
              image: DecorationImage(
                  image: AssetImage('assets/images/ava.png'),
                  fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
