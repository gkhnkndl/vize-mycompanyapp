import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/widgets/profileItem.dart';

import '../widgets/goBack.dart';

class MyCompanyScreen extends StatelessWidget {
  const MyCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 25, 28, 46),
          Color.fromARGB(255, 34, 27, 44)
        ])),
        child: Column(
          children: [
            SizedBox(height: 10),
            ProfileItem(
              avatar: "assets/images/warship.jpg",
              user: "Bensalem Dış Ticaret Limited Şirketi",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(38, 158, 158, 158),
              ),
              child: Column(
                children: [
                  Text("Vergi No: 1640859157",
                      style: GoogleFonts.raleway(color: Colors.white)),
                  Text("Telefon Numarası: 0212 836 4520",
                      style: GoogleFonts.raleway(color: Colors.white)),
                  Text("Bölge: İstanbul - Avrupa",
                      style: GoogleFonts.raleway(color: Colors.white)),
                  Text("Adres: Balıkyolu Mh. Ozanlar Cd. No: 127",
                      style: GoogleFonts.raleway(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(38, 158, 158, 158),
              ),
              child: Column(
                children: [
                  Text(
                    "Hakkımızda",
                    style: GoogleFonts.raleway(color: Colors.white),
                  ),
                  Divider(),
                  Text("Telefon Numarası: 0212 836 4520",
                      style: GoogleFonts.raleway(color: Colors.white)),
                  Text("Bölge: İstanbul - Avrupa",
                      style: GoogleFonts.raleway(color: Colors.white)),
                  Text("Adres: Balıkyolu Mh. Ozanlar Cd. No: 127",
                      style: GoogleFonts.raleway(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 20),
            GoBack(),
          ],
        ),
      ),
    );
  }
}
