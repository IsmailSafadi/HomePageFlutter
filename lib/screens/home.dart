import 'package:flutter/material.dart';
import 'package:flutter_application_demo_app/widgets/collection_item.dart';
import 'package:flutter_application_demo_app/widgets/home_tob_bar.dart';
import 'package:flutter_application_demo_app/widgets/list_item.dart';
import 'package:flutter_application_demo_app/widgets/search_form.dart';
import 'package:flutter_application_demo_app/widgets/section_header.dart';
import 'package:flutter_application_demo_app/widgets/bottom_navigation_bar.dart';
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
          child: Column(
            children: [
              HomeTopBar(),
              SearchForm(size: size),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.43,
                        width: size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return
                             CollectionItem();
                          },
                        ),
                      ),
                      SectionHeader(),
               
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
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                                  child: ListItem(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: 
      SafeArea(
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
    )
    );
  }
}

