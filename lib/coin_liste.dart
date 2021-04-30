import 'package:flutter/material.dart';
import 'package:flutter_coin_uygulamasi/model/coin.dart';
import 'package:flutter_coin_uygulamasi/strings/Strings.dart';

import 'hakkinda.dart';



class CoinListesi extends StatelessWidget {
  static  List<Coin> tumCoinler;


  @override
  Widget build(BuildContext context) {
    tumCoinler = verileriHazirla();
    return Scaffold(
      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Cüzdanım"),
              leading: Icon(Icons.money),

            ),
            ListTile(
              title: Text("Çıkış yap"),
              leading: Icon(Icons.exit_to_app),


            ),
            ListTile(
              title: Text("Hakkında"),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hakkinda()));


              },


            ),
          ],

        ),



      ),
      appBar: AppBar(
        title: Text("Coin Uygulaması "),
      ),
      body: listeOlustur(),
    );
  }

  List<Coin> verileriHazirla() {
    List<Coin> coinler = [];
    for (int i = 0; i < 10; i++) {
      String kresmi =
          Strings.COIN_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String bresmi =
          Strings.COIN_ADLARI[i].toLowerCase() + "_b" + "${i + 1}.png";


      Coin eklenecekCoin = Coin(
          Strings.COIN_ADLARI[i], Strings.COIN_DOLASAN_ARZ[i],
          Strings.ISLEM_HACMI[i], Strings.COIN_DEGER[i],Strings.COIN_BILGILERI[i] ,bresmi, kresmi);

      coinler.add(eklenecekCoin);
    }

      return coinler;

  }

  Widget listeOlustur() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirliCoin(context, index);
      },
      itemCount: tumCoinler.length,
    );
  }

  Widget tekSatirliCoin(BuildContext context, int index) {
    Coin oAnListeyeEklenecekCoin = tumCoinler[index];

    return Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap:()=> Navigator.pushNamed(context, "/coinDetay/$index"),
            leading: Image.asset(
              "images/" + oAnListeyeEklenecekCoin.coinKresmi,
              width: 58,
              height: 58,
            ),
            title: Text(
              oAnListeyeEklenecekCoin.coinAdi,
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.teal) ,
            ),
          subtitle:Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              oAnListeyeEklenecekCoin.coinDeger,
              style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87) ,
            ),
          ),
            trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
          ),
        ));
  }
}

