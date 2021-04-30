import 'package:flutter/material.dart';
import 'package:flutter_coin_uygulamasi/coin_detay.dart';
import 'package:flutter_coin_uygulamasi/coin_liste.dart';
import 'package:flutter_coin_uygulamasi/model/coin.dart';

import 'navigasyon_sayfasi.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/coinListesi",
      routes: {
        "/": (context) => CoinListesi(),
        "/coinListesi": (context) => CoinListesi(),

      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");

        if (pathElemanlari[1] == 'coinDetay') {
          return MaterialPageRoute(
              builder: (context) => CoinDetay(int.parse(pathElemanlari[2])));

        };
      },
      theme: ThemeData(primarySwatch: Colors.lightGreen),

      title: "Kripto Rehberi",


    );



  }
}
