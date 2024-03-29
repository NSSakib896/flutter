import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {


String src='dice_image/dice1.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    int randomNumber = Random().nextInt(5)+1;
                    if(randomNumber==1){
                      src='dice_image/dice1.png';
                    }
                    else if(randomNumber==2){
                      src='dice_image/dice2.png';
                    }
                    else if(randomNumber==3){
                      src='dice_image/dice3.png';
                    }
                    else if(randomNumber==4){
                      src='dice_image/dice4.png';
                    }
                    else if(randomNumber==5){
                      src='dice_image/dice5.png';
                    }
                    else if(randomNumber==6){
                      src='dice_image/dice6.png';
                    }
                  });
                }, 
                child: Text('role')),
              Image.asset('$src')
          ],),
        ),
        backgroundColor: Colors.red[900],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}