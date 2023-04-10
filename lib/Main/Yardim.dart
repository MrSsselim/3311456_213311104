import 'dart:ui';
import 'package:flutter/material.dart';

class Yardim extends StatefulWidget {

  @override
  State<Yardim> createState() => _State();
}

class _State extends State<Yardim> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Yardım"),
      ),
      body: Padding(
        padding: EdgeInsets.all(ekranGenisligi/20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Uygulama Nasıl Kullanılır\n", textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/20,
                  ),
                ),

                Text("1)\n\nÖncelikle 'Ana Sayfa' ya gelip geçici bir kullanıcı adı giriniz.\n", textAlign: TextAlign.left,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: ekranGenisligi/25,
                  ),
                ),

                Text("2)\n\nKullanıcı adını girdikten sonra 'Başlat' düğmesine basınız.\n",textAlign: TextAlign.left,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: ekranGenisligi/25,
                  ),
                ),
                Text("3)\n\nKarşınıza çıkacak ekrandan eğlenceli bir test seçin ve keyfinize bakın.\n",textAlign: TextAlign.left,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: ekranGenisligi/25,
                  ),
                ),

              ],
          ),
        ),
      ),
    );
  }
}
