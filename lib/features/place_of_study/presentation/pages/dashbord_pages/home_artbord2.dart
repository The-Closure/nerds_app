// ignore_for_file: constant_identifier_names

import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/core/constants/font.dart';
import 'package:flutter/material.dart';

class HomeArtbord2 extends StatelessWidget {
  const HomeArtbord2({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Hi Surf.\n', style: AppTextStyle().TextStyle1()),
                  TextSpan(
                      text: '5 Tasks are predning',
                      style: AppTextStyle().TextStyle3(
                          color: const Color.fromARGB(255, 197, 162, 162)))
                ],
              ),

            ),
          ),
          Center(
            child: Container(
              width: width - 50,
              height: height * 1.3 / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xff7B9DE2),
                    Color(0xff3B3BC0),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Information Architecture',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.1 / 10,
                    ),
                    const Text(
                      'Sers & caer',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    // Container(
                    //   width: 500,
                    //   child: const Stack(children: [
                    //     CircleAvatar(child: Icon(Icons.person)),
                    //     Positioned(
                    //         left: 25,
                    //         child: CircleAvatar(child: Icon(Icons.person))),
                    //   ]),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Text(
            'monthly preview',
            style: AppTextStyle().TextStyle1(),
          ),
          SizedBox(
            height: height * 4 / 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            width: (width / 2) - 25,
                            height: height * 2 / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const RadialGradient(
                                colors: <Color>[
                                  Color.fromARGB(255, 233, 239, 249),
                                  Color.fromARGB(255, 128, 225, 161),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(children: [
                                    TextSpan(
                                        text: '22\n',
                                        style: AppTextStyle()
                                            .TextStyle1(color: Colors.white)),
                                    TextSpan(
                                        text: 'Done',
                                        style: AppTextStyle().TextStyle3()),
                                  ])),
                            )),
                        SizedBox(
                          height: height * 0.25 / 10,
                        ),
                        Container(
                          width: (width / 2) - 25,
                          height: height * 1 / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 244, 113, 196),
                                Color.fromARGB(255, 195, 80, 80),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(children: [
                                  TextSpan(
                                      text: '12\n',
                                      style: AppTextStyle()
                                          .TextStyle1(color: Colors.white)),
                                  TextSpan(
                                      text: 'Ongoing',
                                      style: AppTextStyle().TextStyle3()),
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            width: (width / 2) - 25,
                            height: height * 1 / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color.fromARGB(255, 214, 164, 45),
                                  Color.fromARGB(255, 168, 192, 59),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(children: [
                                    TextSpan(
                                        text: '7\n',
                                        style: AppTextStyle()
                                            .TextStyle1(color: Colors.white)),
                                    TextSpan(
                                        text: 'In Progress',
                                        style: AppTextStyle().TextStyle3()),
                                  ])),
                            )),
                        SizedBox(
                          height: height * 0.25 / 10,
                        ),
                        Container(
                            width: (width / 2) - 25,
                            height: height * 2 / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xff7B9DE2),
                                  Color.fromARGB(255, 134, 134, 198),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(children: [
                                    TextSpan(
                                        text: '14\n',
                                        style: AppTextStyle()
                                            .TextStyle1(color: Colors.white)),
                                    TextSpan(
                                        text: 'Waiting For Review',
                                        style: AppTextStyle().TextStyle3()),
                                  ])),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
