import 'package:flutter/material.dart';
import 'package:login_uygulamasi/soru1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giriş Ekranı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom:ekranYuksekligi/20,),
                child: SizedBox(
                    width: ekranGenisligi/2,
                    child: Image.asset("resimler/ataturk1.png")
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/12
                  ,
                  child: ElevatedButton(

                    child: Text("Giriş Yap",style: TextStyle(fontSize: ekranGenisligi/25),),
                    onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Soru1() ));
                    },
                    style:ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Yardım Seçildi");
                },
                child: Text("Yardım",style:TextStyle(
                  color:Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi/30,
                ),),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
