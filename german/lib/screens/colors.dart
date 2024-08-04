import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:german/screens/alphabets.dart';
import 'package:german/screens/screen1.dart';
import 'package:german/screens/speechtranslator.dart';
import 'package:german/screens/textspeaker.dart';
import 'package:german/screens/translator.dart';
import '../list/list.dart';

class Color extends StatefulWidget {
  const Color({super.key});

  @override
  State<Color> createState() => _ColorState();
}

class _ColorState extends State<Color> {
  final FlutterTts _flutterTts = FlutterTts();

  void initState() {
    super.initState();
    setState(() {
      _flutterTts.setLanguage('de-DE');
    });
  }

  void _speakColors(String color) {
    setState(() {
      _flutterTts.speak(germanColor[color]!);
    });
  }

  Widget germanText(String color) {
    return Text(
      germanColor[color]!,
      style: fonts[8].copyWith(fontSize: 30.0, fontWeight: FontWeight.w400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/frame1.png"), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset("image/new.png"),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                    ],
                  )),
              Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen1(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text("Alphabets"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Alphabet(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text("Translator"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Translator(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text("Speech Translator"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SpeechTranslator(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text("Text Speaker"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TextSpeaker(),
                          ));
                    },
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 8, top: 40),
            child: Text(
              "Colors Speaker",
              style: fonts[3].copyWith(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, top: 200),
            child: ListView.builder(
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Center(
                                child: Text(
                              color[index],
                              style: fonts[3].copyWith(
                                  fontSize: 30.0, fontWeight: FontWeight.w500),
                            )),
                            Text(
                              " : ",
                              style: fonts[8].copyWith(
                                  fontSize: 30.0, fontWeight: FontWeight.w400),
                            ),
                            germanText(
                              color[index],
                            ),
                            InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    color: Colors.blue[100]),
                                child: IconButton(
                                    onPressed: () => _speakColors(color[index]),
                                    icon: Icon(Icons.volume_up)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
