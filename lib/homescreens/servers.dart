// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Servers extends StatefulWidget {
  const Servers({super.key});

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    hint: Text(
                      "Search Servers",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 114, 113, 113),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 20,
                    ),

                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: const Color.fromARGB(123, 241, 241, 241),
                    filled: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Free Servers",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            servers(
              "LA,United States",
              "192.168.0.1",
              "assets/images/usa.png",
              Icons.signal_cellular_alt,
              "9ms",
            ),
            servers(
              "Florida,United States",
              "192.168.0.1",
              "assets/images/usa.png",
              Icons.signal_cellular_alt,
              "9ms",
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Best Servers",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff0366ff),
                  ),
                  child: Center(
                    child: Text(
                      "Premium",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            servers(
              "Canada",
              "192.168.0.1",
              "assets/images/canada.png",
              Icons.signal_cellular_alt,
              "5ms",
            ),
            servers(
              "Australia",
              "192.168.0.1",
              "assets/images/aus.png",
              Icons.signal_cellular_alt,
              "5ms",
            ),
            servers(
              "Japan",
              "192.168.0.1",
              "assets/images/japan.png",
              Icons.signal_cellular_alt,
              "5ms",
            ),
          ],
        ),
      ),
    );
  }

  Padding servers(name, ipAddress, flag, T_icon, T_text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(136, 202, 202, 202),
            width: 2,
          ),
        ),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(ipAddress),
          leading: CircleAvatar(radius: 25, child: Image.asset(flag)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Icon(T_icon, color: Colors.greenAccent),
              Text(
                T_text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
