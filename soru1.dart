import 'package:flutter/material.dart';
import 'package:login_uygulamasi/soru2.dart';

class Soru1 extends StatefulWidget {
  const Soru1({super.key});

  @override
  State<Soru1> createState() => _Soru1State();
}

class _Soru1State extends State<Soru1> {
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
              Image.asset("resimler/kurum.JPG"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(


                      child: Text("1925",style: TextStyle(fontSize: ekranGenisligi/25),),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Soru2() ));
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

                      child: Text("1926",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("1932",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("1911",style: TextStyle(fontSize: ekranGenisligi/25),),
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
