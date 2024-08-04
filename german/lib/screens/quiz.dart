import 'package:flutter/material.dart';
import 'package:german/list/list.dart';
import 'package:german/screens/alphabets.dart';
import 'package:german/screens/screen1.dart';
import 'package:german/screens/speechtranslator.dart';
import 'package:german/screens/textspeaker.dart';
import 'package:german/screens/translator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Map> questions = [
    {
      "question": "What is the word for Dance",
      "options": ["Spielen", "Tanzen", "Leben", "Schlafen"],
      "correctAnswer": 1
    },
    {
      "question": "Good Morning in German Language",
      "options": ["Guten Abend", "Gute Nacht", "Guten Tag", "Guten Morgen"],
      "correctAnswer": 3
    },
    {
      "question": "A in German Language",
      "options": ["Bey", "Aa", "Upsilon", "Tsey"],
      "correctAnswer": 1
    },
    {
      "question": "F in German Language",
      "options": ["Bey", "Aa", "Ef", "Tsey"],
      "correctAnswer": 2
    },
    {
      "question": "M in German Laanguage",
      "options": ["Em", "Aa", "Upsilon", "Tsey"],
      "correctAnswer": 0
    }
  ];
  int questionindex = 0;
  int selectedAnsIndex = -1;
  int count = 0;
  bool quizFinish = false;
  MaterialStateProperty<Color?>? checkAns(int buttonIndex) {
    if (selectedAnsIndex != -1) {
      if (buttonIndex == selectedAnsIndex) {
        if (selectedAnsIndex == questions[questionindex]["correctAnswer"]) {
          count++;
          return const MaterialStatePropertyAll(Colors.green);
        } else {
          return const MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == questions[questionindex]["correctAnswer"]) {
          return const MaterialStatePropertyAll(Colors.green);
        }
      }
    } else {
      return const MaterialStatePropertyAll(Colors.blue);
    }
    return const MaterialStatePropertyAll(Colors.blue);
  }

  Widget scoreScreen() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("image/frame1.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 120, left: 50),
            child: Text("Result",
                style: fonts[3].copyWith(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(top: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      count >= 2
                          ? "Congratulations !!!"
                          : "Keep Trying, you will improve!",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Your Score is : ${count} out of ${questionindex}",
                      style: TextStyle(fontSize: 15),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionindex = 0;
                          count = 0;
                        });
                      },
                      child: Text("Try again"),
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(150, 50))),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (questionindex >= questions.length) {
      return scoreScreen();
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("image/frame1.png"))),
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
                      Navigator.pushReplacement(
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
                      Navigator.pushReplacement(
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
          Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Questions :",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      "${questionindex + 1}/${questions.length}",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                    "Q${questionindex + 1}. ${questions[questionindex]["question"]}",
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedAnsIndex = 0;
                  });
                },
                child: Text("A. ${questions[questionindex]["options"][0]}"),
                style: ButtonStyle(
                    backgroundColor: checkAns(0),
                    fixedSize: MaterialStatePropertyAll(Size(330, 20))),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedAnsIndex = 1;
                  });
                },
                child: Text("B. ${questions[questionindex]["options"][1]}"),
                style: ButtonStyle(
                    backgroundColor: checkAns(1),
                    fixedSize: MaterialStatePropertyAll(Size(330, 20))),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedAnsIndex = 2;
                  });
                },
                child: Text("C. ${questions[questionindex]["options"][2]}"),
                style: ButtonStyle(
                    backgroundColor: checkAns(2),
                    fixedSize: MaterialStatePropertyAll(Size(330, 20))),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedAnsIndex = 3;
                  });
                },
                child: Text("D. ${questions[questionindex]["options"][3]}"),
                style: ButtonStyle(
                    backgroundColor: checkAns(3),
                    fixedSize: MaterialStatePropertyAll(Size(330, 20))),
              ),
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            selectedAnsIndex = -1;
            if (questionindex < questions.length) {
              setState(() {
                selectedAnsIndex = -1;
                questionindex++;
              });
            } else {
              setState(() {});
            }
          },
          tooltip: 'Increment',
          child: const Icon(Icons.forward),
        ),
      ),
    );
  }
}
