import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var tf1=TextEditingController();
  var tf2=TextEditingController();
  num sayi1=0;
  num sayi2=0;
  num sonuc=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Calculator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(sonuc.toString(),style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              TextField(controller: tf1,decoration: InputDecoration(hintText: "Sayi1"),keyboardType: TextInputType.number),
              TextField(controller: tf2,decoration: InputDecoration(hintText: "Sayi2"),keyboardType: TextInputType.number,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed:(){
                    setState(() {
                       sayi1=int.parse(tf1.text);
                       sayi2=int.parse(tf2.text);
                       sonuc=sayi1+sayi2;

                    });
                  },
                    child: Text("TOPLA",style: TextStyle(color: Colors.black54),),
                  ),
                  ElevatedButton(
                    onPressed:(){
                    setState(() {
                      sayi1=int.parse(tf1.text);
                      sayi2=int.parse(tf2.text);
                      sonuc=sayi1-sayi2;

                    });
                  },
                    child: Text("ÇIKAR",style: TextStyle(color: Colors.black54),),
                  ),
                  ElevatedButton(onPressed:(){
                    setState(() {
                      sayi1=int.parse(tf1.text);
                      sayi2=int.parse(tf2.text);
                      sonuc=sayi1*sayi2;

                    });
                  },
                    child: Text("ÇARP",style: TextStyle(color: Colors.black54),),
                  ),
                  ElevatedButton(onPressed:(){
                    setState(() {
                      sayi1=int.parse(tf1.text);
                      sayi2=int.parse(tf2.text);
                      sonuc=sayi1/sayi2;

                    });
                  },
                    child: Text("BÖL",style: TextStyle(color: Colors.black54),),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
