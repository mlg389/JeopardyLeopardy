import 'dart:math';

class Questions {
  var orderedAnswers = [];

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
    "This  is used to demonstrate/confirm a package can be incorporated in a Flutter/Dart application and  the package behaves as expected."
  ];
  var diff3Questions = [
    "To keep your mobile application code modular every custom widget implementation must be defined in its own Dart file."
  ];
  var diff4Questions = new List(2);
  var diff5Questions = new List(2);

  // list wrong answers for the questions
  var diff1Answers = ["True"];
  var diff1Answers2 = ["True"];

  var diff2Answers = ["Prototyping", "Unit Testing", "Simulation"];
  var diff2Answers2 = [];

  var diff3Answers = ["False"];
  var diff3Answers2 = [];

  var diff4Answers = [];
  var diff4Answers2 = [];

  var diff5Answers = [];
  var diff5Answers2 = [];

  var correctAnswers = {
    "Constraint based UI design is ideal for creation of flexible UI layouts for small and large screen sizes.":
        "False",
    "An iOS mobile application developed using Flutter and tested using Android Emulator is ready to be deployed to App Store.":
        "False",
    "This  is used to demonstrate/confirm a package can be incorporated in a Flutter/Dart application and  the package behaves as expected.":
        "Proof of concept",
    "To keep your mobile application code modular every custom widget implementation must be defined in its own Dart file.":
        "True"
  };

  BestPractices(int difficulty) {
    // start choosing things based on difficulty
    // call generateAnswers with that
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

  FlutterAppAnatomy(int difficulty) {}
}

class OOP extends Questions {
  var diff1Questions = [
    "Which concept of object-oriented programming is displayed by using the \'is a kind of\' comparison between 2 classes.",
    "Which relationship is a good candidate for superclass and subclass?"
  ];
  var diff2Questions = [
    "Which concept of object-oriented programming is displayed by breaking a large system to smaller components where each component has a  defined role?"
  ];
  var diff3Questions = [
    "Which concept of object-oriented programming is displayed when operations on the instances of a class take different forms based on the specific subclass of the instance."
  ];
  var diff4Questions = [
    "Which concept of object-oriented programming is displayed by building boundaries around components such that internal details of the components are hidden from other components."
  ];
  var diff5Questions = [
    "Which relationship between classes is referred to as a \'has a\' relationship?"
  ];

  // list wrong answers for the questions
  var diff1Answers = ["abstraction", "polymorphism", "encapsulation"];
  var diff1Answers2 = [
    "car-airplane",
    "graduate student-student",
    "person-cat"
  ];

  var diff2Answers = ["polymorphism", "encapsulation", "inheritance"];
  var diff2Answers2 = [];

  var diff3Answers = ["encapsulation", "inheritance", "abstraction"];
  var diff3Answers2 = [];

  var diff4Answers = ["polymorphism", "inheritance", "abstraction"];
  var diff4Answers2 = [];

  var diff5Answers = ["many-to-many", "inheritance", "one-to-many"];
  var diff5Answers2 = [];

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
        "aggregation"
  };

  OOP(int difficulty) {
    // start choosing things based on difficulty
    // call generateAnswers with that
  }
}

class MobileAppsHistory extends Questions {
  var diff1Questions = new List(2);
  var diff2Questions = new List(2);
  var diff3Questions = new List(2);
  var diff4Questions = new List(2);
  var diff5Questions = new List(2);

  // list wrong answers for the questions
  var diff1Answers = new List(8);
  var diff1Answers2 = new List(8);

  var diff2Answers = new List(8);
  var diff2Answers2 = new List(8);

  var diff3Answers = new List(8);
  var diff3Answers2 = new List(8);

  var diff4Answers = new List(8);
  var diff4Answers2 = new List(8);

  var diff5Answers = new List(8);
  var diff5Answers2 = new List(8);

  // key = question, value = correct answer
  var correctAnswers = new Map();

  MobileAppsHistory(int difficulty) {
    // start choosing things based on difficulty
    // call generateAnswers with that
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
    "This Android Studio platform feature  allows to automatically wrap a Flutter widget around another widget in Dart code."
  ];
  var diff4Questions = [
    "Which of the followings is a way to include app icons for iOS and Adroid mobile applications for a Flutter project in Android Studio."
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
  var diff3Answers2 = [];

  var diff4Answers = [
    "use Android Studio image asset configuration wizard",
    "use appicon.cp website",
    "None of these options"
  ];
  var diff4Answers2 = [];

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
        "The //TODO: Comment"
  };

  ASConfig(int difficulty) {
    // start choosing things based on difficulty
    // call generateAnswers with that
  }
}
