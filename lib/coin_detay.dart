import 'package:flutter/material.dart';
import 'package:flutter_coin_uygulamasi/coin_liste.dart';

import 'model/coin.dart';

class CoinDetay extends StatelessWidget {
  int gelenIndex;
  CoinDetay(this.gelenIndex);
  Coin secilenCoin;



  @override
  Widget build(BuildContext context) {
    secilenCoin=CoinListesi.tumCoinler[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget> [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.lightGreen ,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+secilenCoin.coinBresmi,fit: BoxFit.cover,),
              centerTitle: true,

              title: Text(secilenCoin.coinAdi+" Bilgileri"),







            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child:Text(secilenCoin.coinBilgi,style: TextStyle(fontSize: 30,color: Colors.black87),) ,



            ),





          )



        ],
      ),
    );
  }
}
