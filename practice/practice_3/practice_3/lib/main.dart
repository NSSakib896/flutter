import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // body: Container(
//         //   padding: EdgeInsets.all(30),
//         //   color: Colors.grey[700],
//         //   child: Image.asset('assets/cat1.jpeg'),
//           // alignment: Alignment.center,

//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text('data'),
//               ElevatedButton(
//                 onPressed: (){}, 
//                 child: Text("i am button")),
//             ],
//           ),
//         ),
//         debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Container(
        //   padding: EdgeInsets.all(30),
        //   color: Colors.grey[700],
        //   child: Image.asset('assets/cat1.jpeg'),
          // alignment: Alignment.center,

          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$counter'),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    counter+=1;
                  });
                }, 
                child: Text("i am button")),
            ],
          ),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}