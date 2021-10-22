import 'package:flutter/material.dart';
import 'package:flutter_universe/constant.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_universe/data.dart';
import 'package:flutter_universe/screens/detail.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = 'home-page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: gradientEndColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Text(
                          'Space App',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        DropdownButton(
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                'Solar System',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0x7cdbf1ff),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                          icon: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child:
                                Image.asset('assets/images/drop_down_icon.png'),
                          ),
                          underline: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    padding: const EdgeInsets.only(left: 32),
                    child: Swiper(
                        itemCount: planets.length,
                        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            activeSize: 20,
                            space: 8,
                          ),
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, a, b) => DetailPage(
                                    planetInfo: planets[index],
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 100),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      elevation: 8,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 100),
                                            Text(
                                              planets[index].name,
                                              style: TextStyle(
                                                fontSize: 44,
                                                fontWeight: FontWeight.w900,
                                                color: const Color(0xff47455f),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              'solar System',
                                              style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w500,
                                                color: primaryTextColor,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(
                                              height: 32,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Know more',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: secondaryTextColor,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: secondaryTextColor,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Hero(
                                  tag: planets[index].position,
                                  child: Image.asset(
                                    planets[index].iconImage,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
