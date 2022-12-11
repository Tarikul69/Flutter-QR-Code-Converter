import 'package:flutter/material.dart';
import 'package:qr_code/ui/style/style.dart';
import 'package:qr_flutter/qr_flutter.dart';
void main(){
  runApp(
        const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Code"),),
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: data,
              version: QrVersions.auto,
              backgroundColor: Colors.grey,
              size: 300.0,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: 300.0,
              child: TextField(
                onChanged: (value){
                  setState(() {
                    data = value;
                  });
                },
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,

                ),
                decoration: InputDecoration(

                  hintText: "Type the data",
                  filled: true,
                  fillColor: Colors.grey,
                  border: InputBorder.none,
                ),
              )
          ),
          SizedBox(height: 240,),
          RawMaterialButton(
              onPressed: (){},
            fillColor: AppStyle.accentColor,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Text("Generate QR-Code"),
          )
        ],
      ),
    );
  }
}

