import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lottery App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const LotteryApp(),
    );
  }
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {

  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottery App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Lottery winning number is 13'),
                  ]
              ),

            ),
            const SizedBox(height: 20,),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: x == 13 ?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('😍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Congratulations!\nYou have won the lottery \nYour number is $x ' ,
                    textAlign: TextAlign.center,
                  )
                ],
              ) :
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('😭',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Better luck next time \nYour lottery number is $x \nTry Again' ,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
           x = random.nextInt(50);
          }
          );
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}



