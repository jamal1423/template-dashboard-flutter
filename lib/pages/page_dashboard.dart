// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:presensi/pages/page_home.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class PageDashboard extends StatefulWidget {
  const PageDashboard({super.key});

  @override
  State<PageDashboard> createState() => _PageDashboardState();
}

class _PageDashboardState extends State<PageDashboard> {
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
          PageHome(),
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
            icon: const Icon(Icons.calendar_month_rounded),
            title: const Text('Riwayat'),
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
            icon: const Icon(Icons.person_2_rounded),
            title: const Text('Akun'),
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