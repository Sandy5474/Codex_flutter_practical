import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:german/list/list.dart';
import 'package:german/screens/alphabets.dart';
import 'package:german/screens/screen1.dart';
import 'package:german/screens/speechtranslator.dart';
import 'package:german/screens/translator.dart';

class actionWords extends StatefulWidget {
  const actionWords({super.key});

  @override
  State<actionWords> createState() => _actionWordsState();
}

class _actionWordsState extends State<actionWords> {
  final FlutterTts _flutterTts = FlutterTts();

  void initState() {
    super.initState();
    setState(() {
      _flutterTts.setLanguage('de-DE');
    });
  }

  void _speakVerbs(String Verbs) {
    setState(() {
      _flutterTts.speak(germanVerbs[Verbs]!);
    });
  }

  Widget germanText(String Verbs) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Text(
        germanVerbs[Verbs]!,
        style: fonts[8].copyWith(fontSize: 30.0, fontWeight: FontWeight.w400),
      ),
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
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
              margin: EdgeInsets.only(left: 10, top: 40),
              child: Text(
                "Verbs Speaker",
                style: fonts[3].copyWith(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
          Container(
            margin: EdgeInsets.only(top: 200),
            child: ListView.builder(
              itemCount: Verbs.length,
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
                                Verbs[index],
                                style: fonts[3].copyWith(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Text(
                              " : ",
                              style: fonts[8].copyWith(
                                  fontSize: 30.0, fontWeight: FontWeight.w400),
                            ),
                            germanText(
                              Verbs[index],
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
                                    onPressed: () => _speakVerbs(Verbs[index]),
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