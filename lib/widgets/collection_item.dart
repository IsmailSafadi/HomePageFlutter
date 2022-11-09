
import 'package:flutter/material.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(16.0),
     child: Container(
       decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
       child:
       
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
           
           children: [
           Container(
             height: 260,
             width: 260,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               image: DecorationImage(
                   image:
                       AssetImage('assets/images/1.jpg'),
                   fit: BoxFit.fill),
             ),
           ),
           SizedBox(
             height: 10,
           ),
           Container(
             height: 35,
             width: 260,
             child: Row(
               crossAxisAlignment:
                   CrossAxisAlignment.center,
               mainAxisAlignment:
                   MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   '43 Joined',
                   style: TextStyle(fontWeight: FontWeight.w600),
                   textAlign: TextAlign.left,
                 ),
                 // Container(
                 //   height: 35,
                 //   width: 250,
                 //   child: IndexedStack(children: [
                 //     Positioned(
                 //       // top: 30,
                 //       // left: 30,
                 //       height: 35,
                 //       width: 35,
                 //       child: Container(
                 //         height: 35,
                 //         width: 35,
                 //         decoration: BoxDecoration(
                 //           borderRadius:
                 //               BorderRadius.circular(17.5),
                 //           image: DecorationImage(
                 //               image: AssetImage(
                 //                   'assets/images/ava.png'),
                 //               fit: BoxFit.fill),
                 //         ),
                 //       ),
                 //     ),
                 //     Positioned(
                 //       top: 30,
                 //       left: 30,
                 //       child: Container(
                 //         height: 35,
                 //         width: 35,
                 //         decoration: BoxDecoration(
                 //           borderRadius:
                 //               BorderRadius.circular(17.5),
                 //           image: DecorationImage(
                 //               image: AssetImage(
                 //                   'assets/images/ava.png'),
                 //               fit: BoxFit.fill),
                 //         ),
                 //       ),
                 //     ),
                 //   ]),
                 // )
               ],
             ),
           )
       ]),
        ),
     ),
                            );
  }
}

