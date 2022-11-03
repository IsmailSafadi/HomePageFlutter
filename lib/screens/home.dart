import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[300]?.withOpacity(0.8)),
        child: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Padding(
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
                ),
                Container(
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
                    )),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.3,
                          width: size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(children: [
                                  Container(
                                    height: 200,
                                    width: 200,
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '43 Joined',
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/ava.png'),
                                              fit: BoxFit.fill),
                                        ),
                                      )
                                    ],
                                  )
                                ]),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Event for you',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Text('View more')
                              ],
                            ),
                          ),
                        ),
                        // Flexible(
                        // child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListView.builder(
                                physics: ScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 80,
                                                width: 80,
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
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
      ),
    );
  }
}
