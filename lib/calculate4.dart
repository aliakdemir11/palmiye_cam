import 'package:flutter/material.dart';

void main() => runApp(Calc3());

class Calc3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 60,),
            Text("Ortalama Fiyat"),
          ]),
        ),
        body: Hesaplama3(),
      ),
    );
  }
}

class Hesaplama3 extends StatefulWidget {
  @override
  _Hesaplama3State createState() => _Hesaplama3State();
}

class _Hesaplama3State extends State<Hesaplama3> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String resulttext = "0";
  String resulttext2 = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Column(children: [
          Row(
            children: [
              Text(" Giyotin Boyu: "),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Divider(
            height: 50,
          ),
          Row(children: [
            Text(" Giyotin Eni :    "),
            new Flexible(
              child: new TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
              ),
            ),
          ]),
          Divider(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
              child: Text("Hesapla"),
              onPressed: () {
                setState(() {
                  int result = int.parse(num1controller.text) *
                      int.parse(num2controller.text);
                  resulttext = result.toString();

                  int resultx = int.parse(num1controller.text) *
                      int.parse(num2controller.text) *
                      1500;
                  resulttext2 = resultx.toString();
                });
              },
            ),
          ]),
          Divider(
            height: 50,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              resulttext,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              " m²",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ]),
          Divider(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              resulttext2,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              " ₺",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
