import 'package:flutter/material.dart';
import 'package:login_uygulamasi/soru4.dart';
class Soru3 extends StatefulWidget {
  const Soru3({super.key});

  @override
  State<Soru3> createState() => _Soru3State();
}

class _Soru3State extends State<Soru3> {
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
              Image.asset("resimler/eminehoca.png"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(


                      child: Text("Emine Deniz Tekin",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Soru4() ));
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

                      child: Text("Vildan Atasever",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("Deniz Bağdaş",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("Dilan Polat",style: TextStyle(fontSize: ekranGenisligi/25),),
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

