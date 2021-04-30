import 'package:flutter/material.dart';

   class navigasyonSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Navigasyon Sayfası"),
      ),
    drawer: Drawer(
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
        ],






      ),

    ),

    );
  }
}
