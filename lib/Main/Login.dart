import 'package:flutter/material.dart';
import '../Tests/Testler.dart';
import 'Yardim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(title: ''),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                child: SizedBox(
                    child: Image.asset("pictures/logo.jpg",
                      width: ekranGenisligi/3,
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/12,
                  child: ElevatedButton(
                    child: Text("Başla",style: TextStyle(color: Colors.white, fontSize: ekranGenisligi/27,),),
                    onPressed: (){
                      if (_controller.text != "") {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Testler(nick: _controller.text,)));
                        print(_controller.text);
                        print("Başlatıldı...");
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.grey,
                              title: Text('Uyarı!!!',style: TextStyle(color: Colors.black)),
                              content: Text("LÜTFEN KULLANICI ADI GIRINIZ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            );
                          },
                        );
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[600], // Buton arkaplan rengi
                    ),
                  ),
                ),
              ),
              GestureDetector( //Tıklanabilir Yapıyor
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Yardim()));
                  print("Yardım Seçildi");
                },
                child: Text(
                    "Yardım ?",
                    style: TextStyle(
                      color: Colors.deepOrange[400],
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/30,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
