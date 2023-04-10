import 'package:flutter/material.dart';
import 'package:untitled7/Main/Login.dart';

class HayvanSonuc extends StatefulWidget {

  @override
  State<HayvanSonuc> createState() => _HayvanSonucState({});

  final String nick;
  late int result;

  HayvanSonuc({required this.nick, required this.result});
}

class _HayvanSonucState extends State<HayvanSonuc> {

  @override
  // TODO: implement widget
  HayvanSonuc get widget => super.widget;
  int deger = 0;
  int cevap = 0;

  _HayvanSonucState(Set<String> set);
  //deger ve cevap sayısı @overide üzerinde olmalı çünkü
  // kod sürekli tekrarlandığı için aynı değeri geri veriyor

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    late String animal = "";
    late String text = "";

    if (widget.result > 0 && widget.result <= 5){
      animal = "BALIK";
      text = "Çekingen ve birazda ürkek tavırların seni hemen ele veriyor.";
    }
    else if (widget.result > 5 && widget.result <= 7){
      animal = "TAVŞAN";
      text = "Oldukça şaşkın birisin ama aynı zamanda hızlısında.";
    }
    else if (widget.result > 7 && widget.result <= 9){
      animal = "KÖPEK";
      text = "Çok tatlı, garip ve aşırı enerjiksin.";
    }
    else if (widget.result > 9 && widget.result <= 11){
      animal = "KURT";
      text = "Asil, sahiplenici ve sevdiklerine bağımlısın.";
    }
    else if (widget.result > 11 && widget.result <= 13){
      animal = "YILAN";
      text = "Sinsi, güçlü ve gizli birisin, görünüşüne aldanmamak gerek.";
    }
    else if (widget.result > 13 && widget.result <= 15){
      animal = "MAYMUN";
      text = "Çok samimi, sevecan ve birazda tembel birisin.";
    }
    else if (widget.result > 15 && widget.result <= 17){
      animal = "FİL";
      text = "Sana yapılanı unutmayan güçlü ve zekisin";
    }
    else if (widget.result > 17 && widget.result <= 19){
      animal = "YUNUS";
      text = "Her nekadar sadece eğleniyormuş gibi görünsende çok zeki birisin";
    }
    else if (widget.result > 19 && widget.result <= 21){
      animal = "BAYKUŞ";
      text = "Genelde farkedilmeyen, çok zeki ve çok değerli bir kişiliksin.";
    }
    else{
      animal = "HATA :/";
      text = "DİKKAT: EĞER BU YAZIYI GÖRDÜYSEN BİZE LÜTFEN GERİ DÖNÜŞ YAP!!!";
    }


    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("pictures/forest.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      width: ekranGenisligi/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.red[900],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text("-> SONUC <-",textAlign: TextAlign.center, style: TextStyle(fontSize: ekranGenisligi/20,fontWeight: FontWeight.bold,)),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: ekranGenisligi/1.2,
                      height: ekranYuksekligi/10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(animal,style: TextStyle(fontSize: ekranYuksekligi/20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: ekranGenisligi/1.2,
                      height: ekranYuksekligi/2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text("${widget.nick}'in Test Sonucu:\n\n$text", style: TextStyle(fontSize: ekranYuksekligi/20,)),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Ana Sayfa",style: TextStyle(color: Colors.white, fontSize: ekranGenisligi/27,),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[600], // Buton arkaplan rengi
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
