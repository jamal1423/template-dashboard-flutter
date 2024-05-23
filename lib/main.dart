// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:convex_app_bar_example/convex_button_demo.dart';
// import 'package:convex_app_bar_example/custom_appbar_sample.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainApp(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key, required this.title});
  final String title;
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  PageController controller = PageController(initialPage: 1);
  var selected = 1;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          MenuSatu(),
          MenuHome(),
          MenuTiga(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        option: BubbleBarOptions(
          // barStyle: BubbleBarStyle.vertical,
          barStyle: BubbleBarStyle.horizontal,
          bubbleFillStyle: BubbleFillStyle.fill,
          // bubbleFillStyle: BubbleFillStyle.outlined,
          opacity: 0.3,
        ),
        iconSpace: 12.0,
        items: [
          BottomBarItem(
            icon: const Icon(Icons.person_2_rounded),
            title: const Text('Akun'),
            selectedColor: Color.fromARGB(255, 56, 92, 252),
            backgroundColor: Color.fromARGB(255, 132, 2, 158),
          ),
          BottomBarItem(
            icon: const Icon(Icons.home_rounded),
            title: const Text('Beranda'),
            selectedColor: Color.fromARGB(255, 56, 92, 252),
            backgroundColor: Color.fromARGB(255, 132, 2, 158),
          ),
          BottomBarItem(
            icon: const Icon(Icons.calendar_month_rounded),
            title: const Text('Histori'),
            selectedColor: Color.fromARGB(255, 56, 92, 252),
            backgroundColor: Color.fromARGB(255, 132, 2, 158),
          ),
        ],
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
            controller.animateToPage(
              index,
              duration: Duration(milliseconds: 100),
              curve: Curves.bounceIn,
            );
          });
        },
      ),
    );
  }
}


class MenuHome extends StatelessWidget {
  const MenuHome({super.key});

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
                          padding: const EdgeInsets.only(left: 15, bottom: 15, top: 30),
                          child: Text("Menu Lainnya", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: screenSize.width / 3,
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
                              child: Text("Card 1"),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: screenSize.width / 2,
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
                                    Color.fromARGB(255, 145, 255, 222),
                                    Color.fromARGB(255, 81, 252, 200),
                                    Color.fromARGB(255, 5, 250, 177),
                                    Color.fromARGB(255, 5, 250, 177),
                                  ],
                                  stops: const [
                                    0.1,
                                    0.3,
                                    0.9,
                                    1.0
                                  ]
                                ),
                              ),
                              child: Text("Card 2"),
                            )
                          ],
                        )
                      ],
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

class MenuSatu extends StatelessWidget {
  const MenuSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Ini Menu Tab 1"),
    );
  }
}

class MenuTiga extends StatelessWidget {
  const MenuTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Ini Menu Tab 3"),
    );
  }
}