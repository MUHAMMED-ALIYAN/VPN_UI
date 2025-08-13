import 'package:flutter/material.dart';
import 'package:vpn_ui/homescreens/homescreen.dart';
import 'package:vpn_ui/homescreens/profile.dart';
import 'package:vpn_ui/homescreens/servers.dart';
import 'package:vpn_ui/homescreens/speedttest.dart';
import 'package:vpn_ui/widgets/cstmtext.dart';

class BottomNavBar extends StatefulWidget {final int initialIndex;
  const BottomNavBar({Key? key, this.initialIndex = 0}) : super(key: key);
  @override

  
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }
  final List<Widget> pages = [
    VpnHomeScreen(),
    Servers(),
    Speedttest(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: currentIndex < 3
          ? AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.menu, size: 30),
              title: Cstmtext(
                text: "VPN",
                textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              actions: [Icon(Icons.person_outline_sharp, size: 30)],
            )
          : null,

      body: pages[currentIndex],

      bottomNavigationBar: Container(
        height: 80,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xff0366ff),
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home, size: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dns_outlined),
              activeIcon: Icon(Icons.dns, size: 30),
              label: "Servers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.speed),
              activeIcon: Icon(Icons.speed_outlined, size: 30),
              label: "Speed Test",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person, size: 30),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
