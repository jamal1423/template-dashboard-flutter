// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 247, 245, 245),
      child: Column(
        children: [
          Expanded(
            flex: 1,
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
                    Color.fromARGB(255, 145, 233, 255),
                    Color.fromARGB(255, 75, 215, 250),
                    Color.fromARGB(255, 225, 109, 248),
                    Color.fromARGB(255, 218, 81, 245),
                  ],
                  stops: const [
                    0.1,
                    0.3,
                    0.9,
                    1.0
                  ]
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 50, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Selamat Datang", style: TextStyle(fontSize: 11, fontStyle: FontStyle.italic, height: 0.1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mochammad Jamal", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 0.1)),
                        Image.asset('assets/person.png', width: 40, height: 40),
                      ],
                    ),
                    Text("Last login 23/05/2024 19:27:15", style: TextStyle(fontSize: 11, fontStyle: FontStyle.italic, height: 0.1)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
                        child: Text("Transaksi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: screenSize.width / 2.5,
                            height:  screenSize.height / 4.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
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
                                  Color.fromARGB(255, 248, 186, 167),
                                  Color.fromARGB(255, 250, 171, 147),
                                  Color.fromARGB(255, 252, 154, 125),
                                  Color.fromARGB(255, 248, 137, 103),
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ]
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/icon/presensi.png', width: 70, height: 70, fit: BoxFit.cover,),
                                  Text("Presensi", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Proses absensi wajib dilakukan pada saat datang dan pulang.", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: screenSize.width / 2.5,
                            height:  screenSize.height / 4.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
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
                                  Color.fromARGB(255, 164, 191, 250),
                                  Color.fromARGB(255, 136, 172, 250),
                                  Color.fromARGB(255, 87, 137, 245),
                                  Color.fromARGB(255, 68, 124, 245),
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ]
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/icon/calendar.png', width: 70, height: 70, fit: BoxFit.cover,),
                                  Text("Jadwal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Seluruh jadwal kegiatan belajar mengajar.", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenSize.width / 1.1,
                        height:  screenSize.height / 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
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
                              Color.fromARGB(255, 197, 183, 247),
                              Color.fromARGB(255, 179, 160, 245),
                              Color.fromARGB(255, 162, 138, 247),
                              Color.fromARGB(255, 159, 135, 247),
                            ],
                            stops: const [
                              0.1,
                              0.3,
                              0.9,
                              1.0
                            ]
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/icon/notification.png', width: 70, height: 70, fit: BoxFit.cover,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Pengumuman", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                            Text("Untuk dengan mudah mengakses seluruh\npemberitahuan dari pihak sekolah.", 
                                              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12), 
                                                textAlign: TextAlign.justify, 
                                                softWrap: true,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
                        child: Text("Menu Lainnya", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Container(
                                width: screenSize.width / 3,
                                height:  screenSize.height / 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 197, 195, 195),
                                      blurRadius: 2,
                                      offset: Offset(2, 3)
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 145, 233, 255),
                                      Color.fromARGB(255, 75, 215, 250),
                                      Color.fromARGB(255, 6, 201, 250),
                                      Color.fromARGB(255, 6, 201, 250),
                                    ],
                                    stops: const [
                                      0.1,
                                      0.3,
                                      0.9,
                                      1.0
                                    ]
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/icon/guru.png', width: 70, height: 70, fit: BoxFit.cover,),
                                      Text("Pengajar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Informasi tenaga pengajar.", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Container(
                                width: screenSize.width / 2.2,
                                height:  screenSize.height / 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 197, 195, 195),
                                      blurRadius: 2,
                                      offset: Offset(2, 3)
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 250, 168, 162),
                                      Color.fromARGB(255, 248, 153, 146),
                                      Color.fromARGB(255, 250, 144, 137),
                                      Color.fromARGB(255, 247, 133, 125),
                                    ],
                                    stops: const [
                                      0.1,
                                      0.3,
                                      0.9,
                                      1.0
                                    ]
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/icon/laporan.png', width: 70, height: 70, fit: BoxFit.cover,),
                                      Text("Laporan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Rekap laporan user\n(perserta didik / pengajar).", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Container(
                                width: screenSize.width / 3,
                                height:  screenSize.height / 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 197, 195, 195),
                                      blurRadius: 2,
                                      offset: Offset(2, 3)
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 177, 156, 100),
                                      Color.fromARGB(255, 177, 152, 84),
                                      Color.fromARGB(255, 182, 152, 69),
                                      Color.fromARGB(255, 180, 145, 49),
                                    ],
                                    stops: const [
                                      0.1,
                                      0.3,
                                      0.9,
                                      1.0
                                    ]
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/icon/guru.png', width: 70, height: 70, fit: BoxFit.cover,),
                                      Text("Wali Kelas", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Informasi profile wali kelas.", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Container(
                                width: screenSize.width / 2.5,
                                height:  screenSize.height / 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 197, 195, 195),
                                      blurRadius: 2,
                                      offset: Offset(2, 3)
                                    )
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 186, 171, 250),
                                      Color.fromARGB(255, 171, 153, 250),
                                      Color.fromARGB(255, 162, 142, 250),
                                      Color.fromARGB(255, 159, 139, 247),
                                    ],
                                    stops: const [
                                      0.1,
                                      0.3,
                                      0.9,
                                      1.0
                                    ]
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/icon/calendar.png', width: 70, height: 70, fit: BoxFit.cover,),
                                      Text("Jadwal Ujian", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Informasi seputar\njadwal ujian.", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12,), textAlign: TextAlign.justify),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}