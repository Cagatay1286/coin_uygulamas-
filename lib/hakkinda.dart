import 'package:flutter/material.dart';

class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HAKKINDA"),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),

          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: Text(
              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir Çınar tarafından yürütülen 3311456 kodlu MOBİL PROGRAMLAMA DERSİ KAPSAMINDA 183311009 numaralı "
                  "Çağatay ŞENŞATAR tarafından 30 Nisan 2021 günü yapılmıştır.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}