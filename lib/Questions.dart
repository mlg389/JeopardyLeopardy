import 'dart:math';

class Questions {
  var orderedAnswers = [];
  String question;
  var answers;
  String correctAnswer;

  String letter;
  bool isCorrect;

  List generateAnswers(var answers, String correctAnswer) {
    var tempAnswers;

    var letter = ["a", "b", "c", "d"];
    int randomLetter = Random().nextInt(4);

    // TODO: answers[i] will cause a problem with the T/F questions
    int i = 0;
    while (i < 4) {
      if (i != randomLetter) {
        tempAnswers = [letter[i], answers[i], false];
        this.orderedAnswers.add(tempAnswers);
      } else {
        tempAnswers = [letter[i], correctAnswer, true];
        this.orderedAnswers.add(tempAnswers);
      }
    }

    // list of lists as: letter, answer, T/F
    return orderedAnswers;
  }

  void answerResponse() {
    // mark tile as answered
    // add to score if correct
    // return to questions screen
  }
}

class BestPractices extends Questions {
  var diff1Questions = [
    "Constraint based UI design is ideal for creation of flexible UI layouts for small and large screen sizes.",
    "An iOS mobile application developed using Flutter and tested using Android Emulator is ready to be deployed to App Store."
  ];
  var diff2Questions = [
    "This  is used to demonstrate/confirm a package can be incorporated in a Flutter/Dart application and  the package behaves as expected.",
    "Why should widgets be reused?"
  ];
  var diff3Questions = [
    "To keep your mobile application code modular every custom widget implementation must be defined in its own Dart file.",
    "What would be the best way of designing a bunch of buttons in a similar way in an application with differently designed buttons?"
  ];
  var diff4Questions = [
    "Why do we want to keep the build() method as simple as possible?",
    "Why do we want to avoid constructors with concrete Lists of children?"
  ];
  var diff5Questions = [
    "What is a lazy render method?",
    "Why do we want to use AnimatedOpacity or FadeInImage instead of Opacity?"
  ];

  // list wrong answers for the questions
  var diff1Answers = ["True"];
  var diff1Answers2 = ["True"];

  var diff2Answers = ["Prototyping", "Unit Testing", "Simulation"];
  var diff2Answers2 = [
    "Reusable widgets save time coding.",
    "Reusable widgets save memory and storage space.",
    "Reusable widgets make the application run faster."
  ];

  var diff3Answers = ["False"];
  var diff3Answers2 = [
    "Adding design to each individual button.",
    "Creating a button class for all buttons.",
    "Using ThemeData to define a button theme."
  ];

  var diff4Answers = [
    "The build method will clutter up the screen with objects.",
    "The build method has a limited amount of allocated memory, exceeding this will cause and error.",
    "The build method can crash the program by doing too much at once, code should be distributed amongst other methods."
  ];
  var diff4Answers2 = [
    "The constructor will be pulled up and visible on screen, even when it should not be.",
    "The constructor will constantly call and render the objects from the list when it should not.",
    "The constructor will not render concrete Lists of children."
  ];

  var diff5Answers = [
    "A method that renders objects individually, one at a time.",
    "A method that pulls objects from a list to render.",
    "A method that only works for a specific object and does not care about other objects."
  ];
  var diff5Answers2 = [
    "Opacity does not work for animations.",
    "Opacity is not able to draw images.",
    "Opacity does not have the ability to change its visibilty or transform into a child widget."
  ];

  var correctAnswers = {
    "Constraint based UI design is ideal for creation of flexible UI layouts for small and large screen sizes.":
        "False",
    "An iOS mobile application developed using Flutter and tested using Android Emulator is ready to be deployed to App Store.":
        "False",
    "This  is used to demonstrate/confirm a package can be incorporated in a Flutter/Dart application and  the package behaves as expected.":
        "Proof of concept",
    "To keep your mobile application code modular every custom widget implementation must be defined in its own Dart file.":
        "True",
    "Why should widgets be reused?": "All of these answers are correct.",
    "What would be the best way of designing a bunch of buttons in a similar way in an application with differently designed buttons?":
        "Using ThemeData to define a button theme.",
    "Why do we want to keep the build() method as simple as possible?":
        "The build method is called frequently, anc can slow down the application if it is too cluttered.",
    "What is a lazy render method?":
        "A method that only renders the visible part of an object to save memory.",
    "Why do we want to use AnimatedOpacity or FadeInImage instead of Opacity?":
        "Opacity rebuilds on each frame, causing application slowness.",
    "Why do we want to avoid constructors with concrete Lists of children?":
        "The constructors build cost will be significantly higher than needed."
  };

  BestPractices(int difficulty) {
    var random = Random.secure();
    var index;

    switch (difficulty) {
      case 100:
        {
          index = random.nextInt(diff1Questions.length);
          this.question = diff1Questions[index];
          if (index == 0) {
            this.answers = diff1Answers;
          } else {
            this.answers = diff1Answers2;
          }
        }
        break;

      case 200:
        {
          index = random.nextInt(diff2Questions.length);
          this.question = diff2Questions[index];
          if (index == 0) {
            this.answers = diff2Answers;
          } else {
            this.answers = diff2Answers2;
          }
        }
        break;

      case 300:
        {
          index = random.nextInt(diff3Questions.length);
          this.question = diff3Questions[index];
          if (index == 0) {
            this.answers = diff3Answers;
          } else {
            this.answers = diff3Answers2;
          }
        }
        break;

      case 400:
        {
          index = random.nextInt(diff4Questions.length);
          this.question = diff4Questions[index];
          if (index == 0) {
            this.answers = diff4Answers;
          } else {
            this.answers = diff4Answers2;
          }
        }
        break;

      case 500:
        {
          index = random.nextInt(diff5Questions.length);
          this.question = diff5Questions[index];
          if (index == 0) {
            this.answers = diff5Answers;
          } else {
            this.answers = diff5Answers2;
          }
        }
        break;
    }
    this.correctAnswer = correctAnswers[question];
    this.answers.add(correctAnswer);
  }
}

class FlutterAppAnatomy extends Questions {
  var diff1Questions = [
    "Flutter takes advantage of the techniques used in ________ development to support flexible UI layout supporting various screen sizes and aspect ratios.",
    "Which one of the followings is not an advantage of Flutter platform?"
  ];
  var diff2Questions = [
    "Which one of the statements below about Flutter widgets is not correct?",
    "What is the name of the configuration file for Flutter application projects?"
  ];
  var diff3Questions = [
    "What is the name of  the Image widget property that takes an image file to be displayed by the widget?",
    "Which one of the followings can be assigned to the image property of an Image widget?"
  ];
  var diff4Questions = [
    "To specify theme for a materialized application:",
    "Which one of the followings is a valid expression for setting the color property of a widget using hex color code."
  ];
  var diff5Questions = [
    "Which one of the followings is/are Stateful widget lifecycle method(s)?",
    "What is the outcome of the following call if the mobile app user denies permission access to its location?: .Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);"
  ];

  // list wrong answers for the questions
  var diff1Answers = [
    "iOS application",
    "Desktop application",
    "Notepad Application"
  ];
  var diff1Answers2 = [
    "Single code base for applications targeting IOS and Android  devices with various screen sizes and aspect ratios.",
    "Simple and flexible layout system for UI design.",
    "Hot Reload"
  ];

  var diff2Answers = [
    "A widget may display something on the screen.",
    "A widget may be used for positioning of other widgets on the screen.",
    "All the three statement are correct."
  ];
  var diff2Answers2 = [
    "The name depends on the project name.",
    "configuration.xml",
    "configuration"
  ];

  var diff3Answers = ["body", "url", "content"];
  var diff3Answers2 = ["AssertImage", "NetworkImage", "FileImage"];

  var diff4Answers = [
    "set the theme property of the application to a Theme widget.",
    "wrap the application in a Theme widget.",
    "wrap the application in a ThemeData widget."
  ];
  var diff4Answers2 = [
    "color :  Colors.blue",
    "color :  Color(FF1D1E33)",
    "color :  Color(blue)"
  ];

  var diff5Answers = [
    "void initState() {} ",
    "widget build(BuildContect context)) {}",
    "void Deactivate() {}"
  ];
  var diff5Answers2 = [
    "A null value will be returned to the Flutter application making the call.",
    "The call will return the location. The Flutter App making the call may choose to throw an exception.",
    "The call will return false"
  ];

  // key = question, value = correct answer
  var correctAnswers = {
    "Flutter takes advantage of the techniques used in ________ development to support flexible UI layout supporting various screen sizes and aspect ratios.":
        "Web application",
    "Which one of the followings is not an advantage of Flutter platform?":
        "Low licensing fee",
    "Which one of the statements below about Flutter widgets is NOT correct?":
        "A widget cannot have behavior.",
    "What is the name of the configuration file for Flutter application projects?":
        "pubspec.yaml",
    "What is the name of  the Image widget property that takes an image file to be displayed by the widget?":
        "image",
    "Which one of the followings can be assigned to the image property of an Image widget?":
        "All options are correct",
    "To specify theme for a materialized application:":
        "set the theme property of the application to a ThemeData widget.",
    "Which one of the followings is a valid expression for setting the color property of a widget using hex color code.":
        "color :  Color(0xFF1D1E33)",
    "Which one of the followings is/are Stateful widget lifecycle method(s)?":
        "All options",
    "What is the outcome of the following call if the mobile app user denies permission access to its location?: .Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);":
        "he call will throw an exception."
  };

  FlutterAppAnatomy(int difficulty) {
    var random = Random.secure();
    var index;

    switch (difficulty) {
      case 100:
        {
          index = random.nextInt(diff1Questions.length);
          this.question = diff1Questions[index];
          if (index == 0) {
            this.answers = diff1Answers;
          } else {
            this.answers = diff1Answers2;
          }
        }
        break;

      case 200:
        {
          index = random.nextInt(diff2Questions.length);
          this.question = diff2Questions[index];
          if (index == 0) {
            this.answers = diff2Answers;
          } else {
            this.answers = diff2Answers2;
          }
        }
        break;

      case 300:
        {
          index = random.nextInt(diff3Questions.length);
          this.question = diff3Questions[index];
          if (index == 0) {
            this.answers = diff3Answers;
          } else {
            this.answers = diff3Answers2;
          }
        }
        break;

      case 400:
        {
          index = random.nextInt(diff4Questions.length);
          this.question = diff4Questions[index];
          if (index == 0) {
            this.answers = diff4Answers;
          } else {
            this.answers = diff4Answers2;
          }
        }
        break;

      case 500:
        {
          index = random.nextInt(diff5Questions.length);
          this.question = diff5Questions[index];
          if (index == 0) {
            this.answers = diff5Answers;
          } else {
            this.answers = diff5Answers2;
          }
        }
        break;
    }
    this.correctAnswer = correctAnswers[question];
    this.answers.add(correctAnswer);
  }
}

class OOP extends Questions {
  var diff1Questions = [
    "Which concept of object-oriented programming is displayed by using the \'is a kind of\' comparison between 2 classes.",
    "Which relationship is a good candidate for superclass and subclass?"
  ];
  var diff2Questions = [
    "Which concept of object-oriented programming is displayed by breaking a large system to smaller components where each component has a  defined role?",
    "Which relationship best represents black-box coding?"
  ];
  var diff3Questions = [
    "Which concept of object-oriented programming is displayed when operations on the instances of a class take different forms based on the specific subclass of the instance.",
    "Which relationship best represents the relationship between a building and a house?"
  ];
  var diff4Questions = [
    "Which concept of object-oriented programming is displayed by building boundaries around components such that internal details of the components are hidden from other components.",
    "Which relationship best shows the relationship between a car and a tire?"
  ];
  var diff5Questions = [
    "Which relationship between classes is referred to as a \'has a\' relationship?",
    "Which relationship shows best how an omnivore may be represented as both a meat and vegetable eater?"
  ];

  // list wrong answers for the questions
  var diff1Answers = ["abstraction", "polymorphism", "encapsulation"];
  var diff1Answers2 = [
    "car-airplane",
    "graduate student-student",
    "person-cat"
  ];

  var diff2Answers = ["polymorphism", "encapsulation", "inheritance"];
  var diff2Answers2 = ["polymorphism", "encapsulation", "inheritance"];

  var diff3Answers = ["encapsulation", "inheritance", "abstraction"];
  var diff3Answers2 = ["abstraction", "polymorphism", "encapsulation"];

  var diff4Answers = ["polymorphism", "inheritance", "abstraction"];
  var diff4Answers2 = ["many-to-many", "inheritance", "one-to-many"];

  var diff5Answers = ["many-to-many", "inheritance", "one-to-many"];
  var diff5Answers2 = ["encapsulation", "inheritance", "abstraction"];

  // key = question, value = correct answer
  var correctAnswers = {
    "Which concept of object-oriented programming is displayed by using the \'is a kind of\' comparison between 2 classes.":
        "Inheritance",
    "Which relationship is a good candidate for superclass and subclass?":
        "student-graduate student",
    "Which concept of object-oriented programming is displayed by breaking a large system to smaller components where each component has a  defined role?":
        "abstraction",
    "Which concept of object-oriented programming is displayed when operations on the instances of a class take different forms based on the specific subclass of the instance.":
        "polymorphism",
    "Which concept of object-oriented programming is displayed by building boundaries around components such that internal details of the components are hidden from other components.":
        "encapsulation",
    "Which relationship between classes is referred to as a \'has a\' relationship?":
        "aggregation",
    "Which relationship best shows the relationship between a car and a tire?":
        "aggregation",
    "Which relationship best represents the relationship between a building and a house?":
        "inheritance",
    "Which relationship shows best how an omnivore may be represented as both a meat and vegetable eater?":
        "polymorphism",
    "Which relationship best represents black-box coding?": "abstraction"
  };

  OOP(int difficulty) {
    var random = Random.secure();
    var index;

    switch (difficulty) {
      case 100:
        {
          index = random.nextInt(diff1Questions.length);
          this.question = diff1Questions[index];
          if (index == 0) {
            this.answers = diff1Answers;
          } else {
            this.answers = diff1Answers2;
          }
        }
        break;

      case 200:
        {
          index = random.nextInt(diff2Questions.length);
          this.question = diff2Questions[index];
          if (index == 0) {
            this.answers = diff2Answers;
          } else {
            this.answers = diff2Answers2;
          }
        }
        break;

      case 300:
        {
          index = random.nextInt(diff3Questions.length);
          this.question = diff3Questions[index];
          if (index == 0) {
            this.answers = diff3Answers;
          } else {
            this.answers = diff3Answers2;
          }
        }
        break;

      case 400:
        {
          index = random.nextInt(diff4Questions.length);
          this.question = diff4Questions[index];
          if (index == 0) {
            this.answers = diff4Answers;
          } else {
            this.answers = diff4Answers2;
          }
        }
        break;

      case 500:
        {
          index = random.nextInt(diff5Questions.length);
          this.question = diff5Questions[index];
          if (index == 0) {
            this.answers = diff5Answers;
          } else {
            this.answers = diff5Answers2;
          }
        }
        break;
    }
    this.correctAnswer = correctAnswers[question];
    this.answers.add(correctAnswer);
  }
}

class ServerUsageConfiguration extends Questions {
  var diff1Questions = [
    "Both iOS and Android require the user permission to allow GEOLocator access the location of the mobile device.",
    "Each try clause always has an associated catch clause."

  ];
  var diff2Questions = [
    "To be able to get live weather data from the OpenWeatherMap Weather API you need to sign up for an account and get an API Key.",
    "What is http.get() used for?"
  ];
  var diff3Questions = [
    "What is the outcome of the call below if the mobile app user denies permission access to its location?. \nGeolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);",
    "What is http.response() used for?"
  ];
  var diff4Questions = [
    "An API provider may provide information in ________________________ format",
    "Which package provides a spinner widget to show the user while waiting for reponse."
  ];
  var diff5Questions = [
    "Which package do you need to install for your application to use Firebase for storing data and user authentication and registration?",
    "To use the Firebase authentication package,you need to :"
  ];

  // list wrong answers for the questions
  var diff1Answers = ["False"];
  var diff1Answers2 = ["False"];

  var diff2Answers = ["True"];
  var diff2Answers2 =["Grabs a response from an http server.", "Sorts an http response into a usable format.", "Process a server request into a human reable version."];

  var diff3Answers = [
  "A null value will be returned to the Flutter application making the call.",
  "The call will return the location. The Flutter App making the call may choose to throw an exception.",
  "The call will return false."
  ];
  var diff3Answers2 = ["Requesting information from a server.", "Formating a GET request to the server." "Accessing server logs for maintence."];

  var diff4Answers = ["JSON", "XML"];
  var diff4Answers2 = ["cupertino_icons", "geolocator", "None of the options is correct"];

  var diff5Answers = [
    "firebase_auth", "firebase_core",  "cloud_firestore"
  ];
  var diff5Answers2 = [
    "Log in and register with Firebase", "Implement a try and catch making sure the package is not decrepated", "Import ‘package:firebase_core/firebase_core.dart’"
  ];

  // key = question, value = correct answer
  var correctAnswers = {
      "An API provider may provide information in ________________________ format":
        "Both options are possible.",
      "Which package provides a spinner widget to show the user while waiting for reponse.":
          "flutter_spinkit",
      "What is the outcome of the call below if the mobile app user denies permission access to its location?. \nGeolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);":
        "The call will throw an exception.",
    "To be able to get live weather data from the OpenWeatherMap Weather API you need to sign up for an account and get an API Key.":
        "False",
    "Both iOS and Android require the user permission to allow GEOLocator access the location of the mobile device.":
        "True",
    "Each try clause always has an associated catch clause.":
        "True",
    "Which package do you need to install for your application to use Firebase for storing data and user authentication and registration?":
        "All of these answers are correct.",
    "To use the Firebase authentication package,you need to :" :
        "Import ‘package:firebase_auth/firebase_auth.dart’",
    "What is http.get() used for?":
        "Sends a GET request with the given headers to the URL",
    "What is http.response() used for?":
      "Creating a new HTTP response with a string body."

};

  ServerUsageConfiguration(int difficulty) {
    var random = Random.secure();
    var index;

    switch (difficulty) {
      case 100:
        {
          index = random.nextInt(diff1Questions.length);
          this.question = diff1Questions[index];
          if (index == 0) {
            this.answers = diff1Answers;
          } else {
            this.answers = diff1Answers2;
          }
        }
        break;

      case 200:
        {
          index = random.nextInt(diff2Questions.length);
          this.question = diff2Questions[index];
          if (index == 0) {
            this.answers = diff2Answers;
          } else {
            this.answers = diff2Answers2;
          }
        }
        break;

      case 300:
        {
          index = random.nextInt(diff3Questions.length);
          this.question = diff3Questions[index];
          if (index == 0) {
            this.answers = diff3Answers;
          } else {
            this.answers = diff3Answers2;
          }
        }
        break;

      case 400:
        {
          index = random.nextInt(diff4Questions.length);
          this.question = diff4Questions[index];
          if (index == 0) {
            this.answers = diff4Answers;
          } else {
            this.answers = diff4Answers2;
          }
        }
        break;

      case 500:
        {
          index = random.nextInt(diff5Questions.length);
          this.question = diff5Questions[index];
          if (index == 0) {
            this.answers = diff5Answers;
          } else {
            this.answers = diff5Answers2;
          }
        }
        break;
    }
    this.correctAnswer = correctAnswers[question];
    this.answers.add(correctAnswer);
  }
}

class ASConfig extends Questions {
  var diff1Questions = [
    "Versions of Android SDK are uniquely identified by:",
    "Two aspects of keeping your installed version of Android Studio up-to-date are keeping the version of Android Studio software and _______ up-to-date"
  ];
  var diff2Questions = [
    "This Android Studio tool shows coding errors at development time.",
    "This Android Studio tool provides a tree structure of the entire application code base, available during development time."
  ];
  var diff3Questions = [
    "This Android Studio platform feature  allows to automatically wrap a Flutter widget around another widget in Dart code.",
    "How can you run Dart Analyzer from the command line?"
  ];
  var diff4Questions = [
    "Which of the followings is a way to include app icons for iOS and Android mobile applications for a Flutter project in Android Studio.",
    "What does enabling asserts do in flutter debbuging?"
  ];
  var diff5Questions = [
    "To use this Android Studio tool your application must be running on a emulator, simulator or a physical device.",
    "This feature of the Android Studio helps breakdown a large project to smaller more manageable parts during implementation and coding."
  ];

  // WRONG answers for the questions
  var diff1Answers = ["Version Number", "Version Name", "API Level"];
  var diff1Answers2 = [
    "Android Studio Libraries",
    "Android Studio Tools",
    "None of the above"
  ];

  var diff2Answers = [
    "Flutter Outline Tab",
    "Flutter Inspector Tab",
    "Run Tab Tab"
  ];
  var diff2Answers2 = [
    "Flutter Inspector Tab",
    "Run Tab Tab",
    "Dart Analysis Tab"
  ];

  var diff3Answers = ["Auto code generation", "Auto format", "Dart Analyzer"];
  var diff3Answers2 = ["flutter dart analyzer", "flutter dart", "analyze"];

  var diff4Answers = [
    "use Android Studio image asset configuration wizard",
    "use appicon.cp website",
    "None of these options"
  ];
  var diff4Answers2 = [
    "Allow returning of higher priority errors in a program.",
    "Allows forcibly stopping a program when a try - catch fails",
    "Allows asserting the runtime of a program to make system allowances of memory."
  ];

  var diff5Answers = [
    "Flutter Outline Tab",
    "Dart Analysis Tab",
    "None of the options"
  ];
  var diff5Answers2 = ["Intension Action", "Flutter Observer", "Dart Analysis"];

  // key = question, value = correct answer
  var correctAnswers = {
    "Versions of Android SDK are uniquely identified by:":
        "Version Name, Version Number and API Level all uniquely identify a version of SDK.",
    "Two aspects of keeping your installed version of Android Studio up-to-date are keeping the version of Android Studio software and _______ up-to-date":
        "Android Studio Plugins",
    "This Android Studio tool shows coding errors at development time.":
        "Dart Analysis Tab",
    "This Android Studio tool provides a tree structure of the entire application code base, available during development time.":
        "Flutter Outline Tab",
    "This Android Studio platform feature  allows to automatically wrap a Flutter widget around another widget in Dart code.":
        "Intension Action",
    "Which of the followings is a way to include app icons for iOS and Adroid mobile applications for a Flutter project in Android Studio.":
        "Android Studio image asset configuration wizard and appicon.cp website",
    "To use this Android Studio tool your application must be running on a emulator, simulator or a physical device.":
        "Flutter Inspector Tab",
    "This feature of the Android Studio helps breakdown a large project to smaller more manageable parts during implementation and coding.":
        "The //TODO: Comment",
    "How can you run Dart Analyzer from the command line?":
        "flutter analyze",
    "What does enabling asserts do in flutter debbuging?":
        "Allow testing expected values and erroring out if values do not exist."
  };
  ASConfig(int difficulty) {
    var random = Random.secure();
    var index;

    switch (difficulty) {
      case 100:
        {
          index = random.nextInt(diff1Questions.length);
          this.question = diff1Questions[index];
          if (index == 0) {
            this.answers = diff1Answers;
          } else {
            this.answers = diff1Answers2;
          }
        }
        break;

      case 200:
        {
          index = random.nextInt(diff2Questions.length);
          this.question = diff2Questions[index];
          if (index == 0) {
            this.answers = diff2Answers;
          } else {
            this.answers = diff2Answers2;
          }
        }
        break;

      case 300:
        {
          index = random.nextInt(diff3Questions.length);
          this.question = diff3Questions[index];
          if (index == 0) {
            this.answers = diff3Answers;
          } else {
            this.answers = diff3Answers2;
          }
        }
        break;

      case 400:
        {
          index = random.nextInt(diff4Questions.length);
          this.question = diff4Questions[index];
          if (index == 0) {
            this.answers = diff4Answers;
          } else {
            this.answers = diff4Answers2;
          }
        }
        break;

      case 500:
        {
          index = random.nextInt(diff5Questions.length);
          this.question = diff5Questions[index];
          if (index == 0) {
            this.answers = diff5Answers;
          } else {
            this.answers = diff5Answers2;
          }
        }
        break;
    }
    this.correctAnswer = correctAnswers[question];
    this.answers.add(correctAnswer);
  }
}
