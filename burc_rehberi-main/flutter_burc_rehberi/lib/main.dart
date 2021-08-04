import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';

import 'burc_liste.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Burc Rehberi",
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/burcListesi",
        routes: {
          "/": (context) => BurcListesi(),
          "/burcListesi": (context) => BurcListesi(),
        },
        onGenerateRoute: (RouteSettings settings) {
          List<String> pathElemanlari = settings.name.split("/");
          if (pathElemanlari[1] == 'burcDetay') {
            return MaterialPageRoute(
                builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
          }
          return null;
        });
  }
}
