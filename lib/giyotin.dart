import 'package:flutter/material.dart';

class Palmiye1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
            child: Container(
              color: Colors.white38,
              child: Text(
                "GİYOTİN SİSTEMLERİ",
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
                "Genellikle kafe ve kamelyalardaki kullanımıyla meşhur olan otomatik açma-kapama özelliğiyle rahatlığın zirvesine ulaşmanızı sağlayacak giyotin sistemleri kapalı mekanları mekanları havadar hâle getirmekte bir numara! Estetik duruşu ve kolay kullanımıyla mekanınızı insanların gözdesi haline getirin.",
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
              fit: BoxFit.cover, image: AssetImage("assets/giyotin.jpg"))),
        ),
      ),
    );
  }
}
