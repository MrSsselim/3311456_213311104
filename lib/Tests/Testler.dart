import 'package:flutter/material.dart';

import 'Hayvan/Hayvan1.dart';

class Testler extends StatefulWidget {

  @override
  State<Testler> createState() => _State();

  late String nick;

  Testler({required this.nick});

}

class _State extends State<Testler> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text("Testler",textAlign: TextAlign.center ,style: TextStyle(fontSize: ekranGenisligi/20, )),
      ),
      backgroundColor: Colors.blueGrey[800],
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.grey[300],
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('pictures/parrot.jpg'),
                      opacity: 100,
                      fit: BoxFit.cover,
                    ),
                ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: ekranGenisligi/24, horizontal: 12),
                title: Text('Hangi Hayvana Benziyorsun', style: TextStyle(color: Colors.black, fontSize: ekranGenisligi/20, fontWeight: FontWeight.bold,),),
                subtitle: Container(child: Text(' Eğlence Testi', style: TextStyle(color: Colors.deepPurple[900], fontSize: ekranGenisligi/24,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,),)),
                trailing: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hayvan1(nick: widget.nick,)));
                  },
                    child:
                    Icon(Icons.arrow_forward,color: Colors.black,size: ekranGenisligi/10)),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
