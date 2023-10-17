import 'package:flutter/material.dart';

class Soru4 extends StatefulWidget {
  const Soru4({super.key});

  @override
  State<Soru4> createState() => _Soru4State();
}

class _Soru4State extends State<Soru4> {
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
              Image.asset("resimler/ceng.png"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ekranGenisligi/3+50,
                    child: ElevatedButton(


                      child: Text("CENG Oğrencileri",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("Kastamonu Ayıları",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("A101 Kasiyeri Kız",style: TextStyle(fontSize: ekranGenisligi/25),),
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

                      child: Text("18 ay askerlik yapmış ali abi",style: TextStyle(fontSize: ekranGenisligi/25),),
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

