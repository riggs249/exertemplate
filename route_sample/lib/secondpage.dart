import 'package:flutter/material.dart';
import 'package:route_sample/drawer.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(title: Text("Page 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text ?? "No Text Yet"),
            const Text("This is Page 2"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, "I am from second page");
            }, child: Text("Go back to Page 1"))
          ]) ,));
  }
}