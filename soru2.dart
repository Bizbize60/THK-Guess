import 'package:flutter/material.dart';
import 'package:login_uygulamasi/soru3.dart';
class Soru2 extends StatefulWidget {
  const Soru2({super.key});

  @override
  State<Soru2> createState() => _Soru2State();
}

class _Soru2State extends State<Soru2> {
  String textHolder="Bol Şans";
  void textChanger(){
    setState(() {
      textHolder="Mal";
    });

  }
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
              Image.asset("resimler/kulup.png"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(


                      child: Text("THKÜ KULÜPLERİ",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Soru3() ));
                      },
                      style:ElevatedButton.styleFrom(
                        primary: Colors.redAccent,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/20,
                  ),
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(

                      child: Text("İlknur Tunç",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        textChanger();
                      },
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(

                      child: Text("Emine Deniz Tekin",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        textChanger();
                      },
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/20,
                  ),
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(

                      child: Text("İUA(respect)",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        textChanger();
                      },
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
              Text(textHolder,style: TextStyle(fontWeight: FontWeight.bold,),)

            ],
          ),
        ),
      ),

    );
  }
}
