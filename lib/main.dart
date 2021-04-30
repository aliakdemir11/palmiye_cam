

import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/hakk%C4%B1nda.dart';
import 'package:mutlu_bayramlar/signin.dart';

import 'package:mutlu_bayramlar/urunSayfasi.dart';

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
    return MaterialApp(routes: {"/sayfa2":(context)=>Xyz(), "/hakkında":(context)=>Hakkinda(),"/signin":(context)=>SignupPage()},
      debugShowCheckedModeBanner: false,
         home: ( Mainpage()) ,);
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/giris.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
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

              ElevatedButton(child:

              Text("Gözat"),
                onPressed: (){
                  Navigator.pushNamed(context,"/sayfa2");
                },),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Column(
                  children: [
                    Container(decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                      child: TextButton( onPressed: (){
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
                    Container(color: Colors.white,
                      child: Text(
                        "Detaylı Bilgi İçin: 0555 555 55 55",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(child: TextButton(
                      child: Text("Hakkında..",
                      style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Navigator.pushNamed (context,"/hakkında");


                    },),
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




