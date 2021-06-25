import 'package:flutter/material.dart';

import 'graph.dart';

class GrafikSayfa extends StatefulWidget {
  const GrafikSayfa({Key key}) : super(key: key);

  @override
  _GrafikSayfaState createState() => _GrafikSayfaState();
}

class _GrafikSayfaState extends State<GrafikSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(leading: IconButton(onPressed: () {   Navigator.pop(context); }, icon: Icon(Icons.arrow_back)) ,
      ),
        body: Center(
          child: BarChartSample2(),
        ),
      ),
    );
  }
}
