import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var ulkeler_liste = <String>[];
  String secilenUlke="Türkiye";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ulkeler_liste.add("Türkiye");
    ulkeler_liste.add("Macaristan");
    ulkeler_liste.add("Bılgaristan");
    ulkeler_liste.add("Yunanistan");
    ulkeler_liste.add("Almanya");
    ulkeler_liste.add("Fransa");
    ulkeler_liste.add("İsveç");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Anasayfa1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(items: ulkeler_liste.map<DropdownMenuItem<String>>(
                    (String value)
                {
                return DropdownMenuItem<String>(

                    value: value,
                    child:
                Text("Ülke: $value",style: TextStyle(color: Colors.pink),),
                );
                }

            ).toList(),
            icon: Icon(Icons.arrow_drop_down),

            value: secilenUlke,
                onChanged:(alinanVeri)
            {
              setState(() {
                secilenUlke = alinanVeri!;
              });
            }),
            Text("Seçilen Ülke: $secilenUlke")
          ],
        ),
      ),

    );
  }
}
