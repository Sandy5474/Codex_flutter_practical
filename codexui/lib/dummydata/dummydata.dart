import 'package:codexui/codes.dart';
import 'package:codexui/homepage.dart';
import 'package:codexui/login.dart';
import 'package:codexui/profile.dart';
import 'package:codexui/topics.dart';
import 'package:flutter/material.dart';

List screens = [homepage(), homepage(), homepage(), homepage(), Profile()];

final iconList = <Widget>[
  Container(
    height: 50,
    width: 75,
    child: Icon(Icons.home_outlined),
  ),
  Container(
    height: 50,
    width: 75,
    child: Icon(Icons.search_sharp),
  ),
  Container(
    height: 50,
    width: 75,
    child: Icon(Icons.add_box_outlined),
  ),
  Container(
    height: 50,
    width: 75,
    child: Icon(Icons.favorite_border_rounded),
  ),
  Container(
    height: 23,
    width: 23,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        image: DecorationImage(image: AssetImage("images/Oval.png"))),
  ),
];

List iconTitle = ["Home", "Search", "Add", "Likes", "Profile"];

List courseList = [
  {
    "courseName": "Java Full Stack",
    "courseImage": "images/java.png",
    "topic": [
      {
        "topicName": "Introduction to java",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      },
      {
        "topicName": "Operators",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      },
      {
        "topicName": "Constructive and Destructive",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      }
    ],
  },
  {
    "courseName": "MERN Stack",
    "courseImage": "images/mern.png",
    "topic": [
      {
        "topicName": "Introduction to MERN",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      },
      {
        "topicName": "Operators",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      },
      {
        "topicName": "Constructive and Destructive",
        "topicDescription":
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
        "code": [
          '''public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.);
    }
}''',
          '''public class Introduction {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        printIntroduction("John");
    }

    public static void printIntroduction(String name) {
        System.out.println("Hello, my name is " + name + ".");
    }
}
''',
          '''public class Introduction {
    public static void main(String[] args) {
        System.out.println("Hello, my name is John.");
    }
}
''',
          '''public class CommandLineIntro {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Hello, my name is " + args[0] + ".");
        } else {
            System.out.println("Hello, my name is John.");
        }
    }
}
'''
        ]
      }
    ],
  },
];

final gradientColor = [
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(93, 108, 244, 0.67),
      Color.fromRGBO(210, 21, 33, 0.667)
    ],
  ),
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromRGBO(244, 132, 132, 1), Color.fromRGBO(153, 4, 4, 1)],
  ),
];
