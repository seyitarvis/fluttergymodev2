import 'package:flutter/material.dart';
import 'package:flutter_application_7/arkakol.dart';
import 'package:flutter_application_7/biceps.dart';
import 'package:flutter_application_7/hesapbilgileri.dart';
import 'package:flutter_application_7/sirthareketleri.dart';

import 'package:flutter_application_7/gogushareketleri.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          actions: <Widget>[
            IconButton(
                iconSize: 50,
                color: Color.fromARGB(255, 13, 1, 21),
                icon: const Icon(Icons.account_box),
                tooltip: 'Hesabım',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const hesapbilgileri()),
                  );
                }),
          ],
          title: const Center(
            child: Text(
              "HAREKETLERİM",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          
          backgroundColor: Colors.yellow,
          child: ListView(children: <Widget>[
            DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.speed_outlined,
                      color: Colors.yellow,
                      size: 100.0,
                    ),
                    Text(
                      "ARVİŞ GYM",
                      style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Anasayfa'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/");
                }),
          ]),
        ),
        body: ListView(children: [
           
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'GÖĞÜS HAREKETLERİ',
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const gogushareketleri()),
                );
              }),
              Image.network(
            'https://static.strengthlevel.com/images/illustrations/bench-press-1000x1000.jpg',
            width: 200,
            height: 250,
            fit: BoxFit.cover,
          ),
        
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'SIRT HAREKETLERİ',
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const sirthareketleri()),
                );
              }),
          Image.network(
            'https://static.strengthlevel.com/images/illustrations/lat-pulldown-1000x1000.jpg',
            width: 200,
            height: 250,
            fit: BoxFit.cover,
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'ARKA KOL HAREKETLERİ',
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const arkakol()),
                );
              }),
          Image.network(
            'https://static.strengthlevel.com/images/illustrations/reverse-grip-tricep-pushdown-1000x1000.jpg',
            width: 200,
            height: 250,
            fit: BoxFit.cover,
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'BİCEPS HAREKETLERİ',
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const biceps()),
                );
              }),
          Image.network(
            'https://static.strengthlevel.com/images/illustrations/ez-bar-curl-1000x1000.jpg',
            width: 200,
            height: 250,
            fit: BoxFit.cover,
          ),
        ]));
  }
}
