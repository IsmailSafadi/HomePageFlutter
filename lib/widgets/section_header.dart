
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: 
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Event for you',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,fontSize: 17)),
            Text('View more')
          ],
        ),
      ),
    );
  }
}
