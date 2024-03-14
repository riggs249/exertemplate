import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key, this.text});

  final String? text;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [DrawerHeader(child: Text("Week 05 - Nav")),
        ListTile(onTap: (){
          Navigator.pop(context);
           Navigator.pushNamed(context, "/");
                  },
  title: (Text("First Page")),),
          ListTile(onTap: (){
           Navigator.pop(context);
           Navigator.pushNamed(context, "/second", arguments: widget.text);
                  },
  title: (Text("Second Page")),
  )
        ],
      )
    );
  }
}