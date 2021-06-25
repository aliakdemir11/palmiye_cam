import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/calculate5.dart';

class Palmiye2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Calc4()));
              },
              child: Text(
                "Fiyat Al",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                child: Container(
                  color: Colors.white38,
                  child: Text(
                    "ALÜMİNYUM-CAM KAPILAR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "AlfaSlabOne"),
                  ),
                ),
              ),
              Container(
                color: Colors.white38,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "Sağlamlığı ve kullanımıyla kullanıcıların isteklerine göre tasarlanabilen yapısıyla ve kullanıcıların tercihlerine uygun olan alüminyum-cam kapılarımız giriş-çıkışları olması gerekenden daha hoş ve tam kapasite kullanıma açık bir hâle getirir. ",
                    style: TextStyle(
                        fontFamily: "Bangers",
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/kapi.jpg"))),
        ),
      ),
    );
  }
}
