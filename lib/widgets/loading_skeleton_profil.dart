// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingSkeletonProfil extends StatelessWidget {
  const LoadingSkeletonProfil({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 129, 149),
      body: Skeletonizer(
        effect: ShimmerEffect(
          baseColor: Color.fromARGB(255, 102, 122, 143),
          highlightColor: Colors.grey,
        ),
        enabled: true,
        child: Container(
          color: const Color.fromARGB(255, 247, 245, 245),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: screenSize.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 197, 195, 195),
                        blurRadius: 4,
                        offset: Offset(2, 4)
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey,
                        Colors.grey,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Image.asset('assets/person.png', width: 70, height: 70),
                      Text("Mochammad Jamal", style: TextStyle(fontSize:  22, fontWeight: FontWeight.bold)), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("XII 10 A", style: TextStyle(fontSize:  15, fontWeight: FontWeight.bold)),
                          Text(" | ", style: TextStyle(fontSize:  15, fontWeight: FontWeight.bold)),
                          Text("10201010", style: TextStyle(fontSize:  15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                flex: 6,
                child: Container(
                  color: const Color.fromARGB(255, 247, 245, 245),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                            width: screenSize.width / 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 197, 195, 195),
                                  blurRadius: 4,
                                  offset: Offset(2, 4)
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.person_2_rounded),
                                          SizedBox(width: 20),
                                          Text("Lihat Profile", style: TextStyle(fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                            width: screenSize.width / 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 197, 195, 195),
                                  blurRadius: 4,
                                  offset: Offset(2, 4)
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.vpn_key_rounded),
                                          SizedBox(width: 20),
                                          Text("Ganti Kata Sandi", style: TextStyle(fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                            width: screenSize.width / 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 197, 195, 195),
                                  blurRadius: 4,
                                  offset: Offset(2, 4)
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.school_rounded),
                                          SizedBox(width: 20),
                                          Text("Nilai Akademik", style: TextStyle(fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                            width: screenSize.width / 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 197, 195, 195),
                                  blurRadius: 4,
                                  offset: Offset(2, 4)
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.info_rounded),
                                          SizedBox(width: 20),
                                          Text("Tentang Aplikasi", style: TextStyle(fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                            width: screenSize.width / 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 197, 195, 195),
                                  blurRadius: 4,
                                  offset: Offset(2, 4)
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.logout_rounded),
                                          SizedBox(width: 20),
                                          Text("Keluar", style: TextStyle(fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}