import 'package:flutter/material.dart';
import 'package:route_sample/drawer.dart';
import 'package:route_sample/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  String fieldValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(text: fieldValue),
      appBar: AppBar(title: const Text("Navigation Demo"),),
      body: Center(
        child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          TextFormField(onChanged: (value){
            setState(() {
              fieldValue = value;
            });

          }),
          const Text("This is the first page"),
        ElevatedButton(onPressed: () async {
          //Basic Push
          // Navigator.push(context, 
          // MaterialPageRoute(builder: (context) => const SecondPage()));
          
          //Named Routes with route map in main.dart
          var res = await Navigator.pushNamed(context, '/second', arguments: fieldValue);

          ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(res as String)));

        }, child: const Text("Go to Second Page"))]
        ),
        )
    );
  }
}