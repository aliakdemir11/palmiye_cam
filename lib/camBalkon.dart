import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mutlu_bayramlar/calculate.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(295, 0, 0, 0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calc()));
                },
                child: Text(
                  "Fiyat Hesaplaması",
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
                      "8 MM CAM BALKON SİSTEMLERİ",
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
                      "Klasik ve en çok tercih edilen ürünlerimizin başında gelen 8 mm cam balkon sistemlerimiz 8 mm temperli cam, sınıfının en kalitelisi alüminyum ve paslanmaz-kırılmaz krom tekerleriyle uzun ömürlü ve kullanışlıdır.                                 ",
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
                    fit: BoxFit.cover, image: AssetImage("assets/urun3.jpg"))),
          ),
        ));
  }
}
