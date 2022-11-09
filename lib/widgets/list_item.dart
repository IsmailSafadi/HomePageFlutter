
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/ava.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Volunteer Solosup',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '09:00 AM to 03:00 PM',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Surakarta, INA',
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Join',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
