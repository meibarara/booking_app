// import 'package:booking_app/brandSelector.dart';
// import 'package:booking_app/productCard.dart';
import 'package:booking_app/icons.dart';
import 'package:booking_app/pages/beranda.dart';
import 'package:booking_app/pages/notifikasi.dart';
import 'package:booking_app/pages/pesanan.dart';
import 'package:booking_app/pages/profil.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _LayoutPage = [
    BerandaPage(),
    PesananPage(),
    NotifikasiPage(),
    ProfilPage()
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xff5b77ee),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          flexibleSpace: Positioned(
            bottom: 30,
            right: 100,
            child: Text(
              "Health Care",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),

      body: _LayoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Ehealthicon.home),
            title: Text("Beranda", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ehealthicon.clipboard),
            title: Text("Pesanan", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ehealthicon.bell),
            title: Text("Notifikasi", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ehealthicon.torso),
            title: Text("Profil", style: TextStyle(fontFamily: "Latha"),),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        onTap: _onTabItem,
      ),
    
    );
  }
}
