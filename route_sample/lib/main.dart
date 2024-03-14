import 'package:flutter/material.dart';
import 'package:route_sample/firstpage.dart';
import 'package:route_sample/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const FirstPage(),
      // initialRoute: '/',
      // routes: {
      //   "/":(context) => const FirstPage(),
      //   "/second" : (context) => const SecondPage()
      // },
      onGenerateRoute: (setting){
        if (setting.name == '/'){
          return MaterialPageRoute(builder: (context)=> const FirstPage());
        }else if (setting.name == '/second'){
          var args = setting.arguments as String;
          return MaterialPageRoute(builder: (context)=> SecondPage(text: args));
        }else{
          //return MaterialPageRoute(builder: (context) => NotFound())
        }
      },
    );
  }
}
