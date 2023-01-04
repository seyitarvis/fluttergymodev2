import 'package:flutter/material.dart';

class arkakol extends StatelessWidget {
  const arkakol ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'TRİCEPS HAREKETLERİ',
        style: TextStyle(
       color: Colors.yellow
        ),
        ),
      ),
      body: ListView(

        children: [
          
          Text(
            "BENCH PRESS",
            textAlign:TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.yellow),),
          Image.network('https://static.strengthlevel.com/images/illustrations/bench-press-1000x1000.jpg'

          ,
          fit:BoxFit.cover),
          Text(
            "DUMBELL BENCH PRESS",
            textAlign:TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.yellow),),
          Image.network('https://static.strengthlevel.com/images/illustrations/dumbbell-bench-press-1000x1000.jpg'

          ,
          fit:BoxFit.cover),
           ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
        ]
      ),
    );
  }
}
