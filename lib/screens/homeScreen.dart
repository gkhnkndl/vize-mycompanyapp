import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/widgets/buttonItem.dart';
import 'package:vize/widgets/menuItem.dart';

import '../widgets/profileItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: const Color.fromARGB(255, 253, 253, 253), size: 40),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 25, 28, 46),
            Color.fromARGB(255, 34, 27, 44)
          ])),
        ),
        backgroundColor: Color.fromARGB(255, 55, 55, 56),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            ProfileItem(
                user: "Gökhan Kundala",
                avatar: "assets/images/p6.webp",
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                }),
            SizedBox(height: 50),
            Expanded(
              child: Column(
                children: [
                  MenuItem(
                      title: "Home Screen",
                      icon: Icon(Icons.home, size: 30),
                      onTap: () {
                        Navigator.pushNamed(context, "/home");
                      }),
                  Divider(),
                  MenuItem(
                      title: "My Company",
                      icon: Icon(Icons.book_online_outlined, size: 30),
                      onTap: () {
                        Navigator.pushNamed(context, "/company");
                      }),
                  Divider(),
                  MenuItem(
                      title: "My Lists",
                      icon: Icon(Icons.list_alt_outlined, size: 30),
                      onTap: () {
                        Navigator.pushNamed(context, "/home");
                      }),
                  Divider(),
                  MenuItem(
                      title: "Help",
                      icon: Icon(Icons.help_center_outlined, size: 30),
                      onTap: () {
                        Navigator.pushNamed(context, "/help");
                      }),
                  Divider(),
                  MenuItem(
                      title: "Settings",
                      icon: Icon(Icons.settings_outlined, size: 30),
                      onTap: () {
                        Navigator.pushNamed(context, "/settings");
                      }),
                  Divider(),
                ],
              ),
            ),
            MenuItem(
              icon: Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/welcome", (route) => false);
              },
              title: "Sign Out",
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 25, 28, 46),
          Color.fromARGB(255, 34, 27, 44),
        ])),
        child: Expanded(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "My Lists",
                            style: GoogleFonts.raleway(color: Colors.white, fontSize: 30),
                          ),
                          Icon(Icons.add_circle_outline_rounded,
                              color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  TrackAdd("assets/images/list.png", "Müşteri Kodları",
                      "Gökhan Kundala"),
                  TrackAdd("assets/images/list.png", "Fiyat Listesi",
                      "Pazarlama Ekibi"),
                  TrackAdd("assets/images/list.png", "İhracat Beyannameleri",
                      "Operasyon Ekibi"),
                  TrackAdd(
                      "assets/images/list.png", "Gelen Ürünler", "Depo Birimi"),
                  TrackAdd(
                      "assets/images/list.png", "Giden Ürünler", "Depo Birimi"),
                  TrackAdd("assets/images/list.png", "Cari Açık Listesi",
                      "Muhasebe Birimi"),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Shared Lists",
                            style: GoogleFonts.raleway(color: Colors.white, fontSize: 30),
                          ),
                          Icon(Icons.add_circle_outline_rounded,
                              color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  TrackAdd("assets/images/list.png", "Müşteri Kodları",
                      "Gökhan Kundala"),
                  TrackAdd("assets/images/list.png", "Fiyat Listesi",
                      "Pazarlama Ekibi"),
                  TrackAdd("assets/images/list.png", "İhracat Beyannameleri",
                      "Operasyon Ekibi"),
                  TrackAdd(
                      "assets/images/list.png", "Gelen Ürünler", "Depo Birimi"),
                  TrackAdd(
                      "assets/images/list.png", "Giden Ürünler", "Depo Birimi"),
                  TrackAdd("assets/images/list.png", "Cari Açık Listesi",
                      "Muhasebe Birimi"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Padding TrackAdd(String photo, String title, String artist) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 4),
    child: Container(
      width: 355,
      height: 90,
      decoration: BoxDecoration(color: Color.fromARGB(0, 168, 41, 41)),
      child: Row(
        children: [
          Image.asset(
            photo,
            width: 100,
            height: 100,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: Text(title,
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.clip),
                  ),
                ],
              ),
              Container(
                child: Text(artist,
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Color.fromARGB(192, 255, 255, 255),
                    ),
                    overflow: TextOverflow.clip),
              ),
              SizedBox(height: 4),
              Container(
                child: Row(
                  children: [
                    ButtonAddSmall(
                      target: "/edit",
                      buttonText: "Edit",
                      iconic: Icon(Icons.edit_document,
                          size: 12, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    ButtonAddSmall(
                      target: "/delete",
                      buttonText: "Delete",
                      iconic: Icon(Icons.delete, size: 12, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: 15),
        ],
      ),
    ),
  );
}
