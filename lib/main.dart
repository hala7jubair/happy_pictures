import 'package:flutter/material.dart';

void main() => runApp(const FrontFace());

class FrontFace extends StatelessWidget {
  const FrontFace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Happy Pictures!"), centerTitle: true),
        primary: true,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                 Image.asset('assets/image.png', height: 102, width: 100,),
                 const Text("A Flutter based app",
                     style: TextStyle(color: Colors.blue),textScaleFactor: 2),
               ],),
              const Text("for uploading and retrieving image from firebase!", textScaleFactor: 1.2,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => print("clicked the 'navigate next' button"), child: Icon(Icons.navigate_next),),
      ),
    );
  }
}

