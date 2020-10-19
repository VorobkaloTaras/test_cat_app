import 'package:flutter/material.dart';

class NoConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("NoConnectionPage created");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('connection error', style: TextStyle(fontSize: 20),),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("  OK  ", style: TextStyle(fontSize: 30),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
