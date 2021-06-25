import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/hakk%C4%B1nda.dart';
import 'package:mutlu_bayramlar/signin.dart';
import 'package:mutlu_bayramlar/tablo.dart';

import 'package:mutlu_bayramlar/urunSayfasi.dart';
import 'package:mutlu_bayramlar/usta.dart';

import 'graph2.dart';

void main() {
  runApp(Pal());
}

class Pal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Palm();
  }
}

class Palm extends StatefulWidget {
  @override
  _PalmState createState() => _PalmState();
}

class _PalmState extends State<Palm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/sayfa2": (context) => Xyz(),
        "/signin": (context) => SignupPage()
      },
      home: (Mainpage()),
    );
  }
}

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/abc.jpg"),fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Fiyat Listesi'),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return Tablo();
                        }));
              },
            ),
            ListTile(
              leading: Icon(Icons.graphic_eq),
              title: Text('Yalıtım Grafiği'),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return GrafikSayfa();
                        }));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Sipariş İçin..'),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return YrK();
                        }));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_outlined),
              title: Text('Hakkında'),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return Hakkinda();
                        }));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/giris.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text(
                  "palmiye",
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.lightBlue[800],
                    fontFamily: "Charmonman",
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Yaz Kıs Balkon Keyfi...",
                style: TextStyle(
                  fontFamily: "Karantina",
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 50,
              ),
              ElevatedButton(
                child: Text("Gözat"),
                onPressed: () {
                  Navigator.pushNamed(context, "/sayfa2");
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        child: Text(
                          "MÜŞTERİMİZ OLMAK İÇİN TIKLAYIN",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Text(
                        "Detaylı Bilgi İçin: 0555 555 55 55",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
