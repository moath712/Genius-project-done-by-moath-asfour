import 'package:loginui/quiz game 3/quiz-game/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "إذا كانت السلة بها jjj، وأضفنا إليهم 3 برتقالات، كم يصبح عدد البرتقالات التي في السلة؟",
    {
      "7 برتقالات.": false,
      "2 برتقالات.": false,
      "5 برتقالات.": true,
      "4 برتقالات.": false,
    },
  ),
  QuestionModel("كيف تستطيع رؤية الأشياء؟", {
    "عبر اليد": false,
    "عبر الاذن": false,
    "عبر الانف": false,
    "عبر العيون": true,
  }),
  QuestionModel("What is the averge nulber of kittens in a litter ?", {
    "1 to 2": false,
    "3 to 5": true,
    "8 to 10": false,
    "12 to 14": false,
  }),
  QuestionModel("How many moons does Mars have ?", {
    "1": false,
    "2": false,
    "4": true,
    "8": false,
  }),
  QuestionModel("What is Mars's nickname ?", {
    "The red planet": true,
    "The dusty planet": false,
    "The hot planet": false,
    "The smelly planet": false,
  }),
  QuestionModel("About How long would it take to travel to Mars ?", {
    "Three days": false,
    "A month": false,
    "Eight months": true,
    "Two years": false,
  }),
  QuestionModel(
      "Mars is Named after the Roman god Mars. What is he the god of ?", {
    "Fire": false,
    "Love": false,
    "Agriculture": false,
    "War": true,
  }),
  QuestionModel("Mars Is the ___ planet from the sun ?", {
    "Secon": false,
    "Third": false,
    "Fourth": true,
    "Sixth": false,
  }),
  QuestionModel(
      "Where did Orville and Wilbur Wright build their first flying airplane ?",
      {
        "Paris, France": false,
        "Boston, Massachusetts": false,
        "Kitty Hawk, North Carolina": true,
        "Tokyou, Japan": false,
      }),
  QuestionModel(
      "The First astronuts to travel to space came from which country ?", {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
  }),
];
