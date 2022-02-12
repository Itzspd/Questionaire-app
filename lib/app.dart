import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import './textcontrol.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var information = [
    "1.DID YOU KNOW THAT THE STRONGEST SPIDER SILK IS THE DARWIN BARK SPIDER SILK.",
    "2.IN DEMON SLAYER, THE STRONGEST HASHIRA IS GYOMI.",
    "3.PAPER IS MADE FROM WOOD.",
    "4.THE FATHER OF MODERN QUANTUM MECHANICS IS MAX PLANKS.",
    "5.THE AVERAGE LENGTH OF A WHALE INTESTINE IS THREE FOOTBALL FILED LONG."
  ];
  var index = 0;

  void indexcontrollerfornext() {
    setState(() {
      index = index + 1;
    });
  }

  void restart() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(30, 91, 173, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 91, 173, 1),
          title: const Text('Udemy Assignment 1'),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30),
          centerTitle: true,
          elevation: 0,
        ),
        body: index < information.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white),
                      child: text(information[index])),
                  Container(
                    width: double.infinity,
                    height: 75,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textcontrol('Next', indexcontrollerfornext),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: RaisedButton(
                  onPressed: restart,
                  child: const Text('Restart the app'),
                ),
              ),
      ),
    );
  }
}
