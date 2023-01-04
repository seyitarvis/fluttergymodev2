import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _menuState();
}

class _menuState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        
        children:<Widget> [DrawerHeader(child:
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Icon(Icons.category,color: Colors.white,
                size: 100,),
                // ignore: prefer_const_constructors
                Text("KATEGORİLER",
                style: const TextStyle(color: Colors.white,
                fontSize: 25),)
                
              ],
            ),
          )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Anasayfa'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),

        ],
      ),
    );
}
}
