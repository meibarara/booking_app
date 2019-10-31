// import 'package:booking_app/brandSelector.dart';
// import 'package:booking_app/productCard.dart';
import 'package:booking_app/icons.dart';
import 'package:booking_app/pages/beranda.dart';
import 'package:booking_app/pages/notifikasi.dart';
import 'package:booking_app/pages/pesanan.dart';
import 'package:booking_app/pages/profil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    ScreenUtil.instance =
        ScreenUtil(width: 1125, height: 2436, allowFontScaling: true)
          ..init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.blue, //Color(0xff5b77ee),
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
      // body:SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.only(
      //             top: ScreenUtil().setHeight(200),
      //             right: ScreenUtil().setWidth(40)),
      //       ),
      //       BrandSelector(
      //         brands: ["Booking", "Konsultasi", "Layanan", "E-Health"],
      //       ),
      //       // SizedBox(
      //       //   height: ScreenUtil().setWidth(50),
      //       // ),
      // SizedBox(
      //   height: ScreenUtil().setHeight(1050),
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     physics: BouncingScrollPhysics(),
      //     itemCount: products.length - 1,
      //     itemBuilder: (context, index) {
      //       Shoes shoes = products[index];
      //       return Padding(
      //         padding: EdgeInsets.only(
      //           left: ScreenUtil().setWidth(30),
      //         ),
      //         child: ProductCard(shoes: shoes, cardNum: index),
      //       );
      //     },
      //   ),
      // ),

      body: _LayoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(EhealthIcons.beranda),
            title: Text("Beranda", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(EhealthIcons.pesanan),
            title: Text("Pesanan", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(EhealthIcons.notifikasi),
            title: Text("Notifikasi", style: TextStyle(fontFamily: "Latha"),),
          ),
          BottomNavigationBarItem(
            icon: Icon(EhealthIcons.profil),
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
      //ListView(
      //   children: <Widget>[
      //     Container(
      //       height: 250.0,
      //       margin: EdgeInsets.only(
      //           left: 20.0, top: 20.0, right: 20.0, bottom: 5.0),
      //       child: ListView(
      //         scrollDirection: Axis.horizontal,
      //         children: <Widget>[
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 200.0,
      //                 width: 140.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 200.0,
      //                 width: 140.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 200.0,
      //                 width: 140.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 200.0,
      //                 width: 140.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       height: 15.0,
      //       margin: EdgeInsets.only(left: 30.0),
      //       child: Text("Artikel", style: TextStyle(fontFamily: "Latha-bold"),),
      //     ),
      //     Container(
      //       height: 250.0,
      //       margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      //       child: ListView(
      //         scrollDirection: Axis.horizontal,
      //         children: <Widget>[
      //           Container(
      //             margin:
      //                 EdgeInsets.only(left: 10.0, right: 5.0, bottom: 10.0, top: 10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 100.0,
      //                 width: 270.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 100.0,
      //                 width: 270.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.all(10.0),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(17.0),
      //               child: Image(
      //                 image: AssetImage("assets/images/2.jpg"),
      //                 height: 100.0,
      //                 width: 270.0,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      // ],
      // ),
      // ),
      // );
    );
  }
}
