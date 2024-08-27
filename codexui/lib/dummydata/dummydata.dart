import 'package:flutter/material.dart';

final iconList = <IconData>[
  Icons.home_outlined,
  Icons.search,
  Icons.add_box_outlined,
  Icons.favorite_outline,
  Icons.account_circle_outlined
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
