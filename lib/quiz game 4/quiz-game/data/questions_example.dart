import 'package:loginui/quiz game 4/quiz-game/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "ما هو الشيء الذي يمكنه أن يكتب، ولكنه لا يستطيع أن يقرأ؟",
    {
      "الكتاب. ": false,
      "المسطرة. ": false,
      "القلم. ": true,
      "الممحاة.": false,
    },
  ),
  QuestionModel(" ما هو الشيء الذي يوجد في الدقيقة مرتين، ويوجد في القرن مرة واحدة، ولا يوجد نهائي في الساعة؟", {
    "الدب. ": false,
    "الوقت.": false,
    "النار. ": false,
    "حرف القاف.": true,
  }),
  QuestionModel("شيء من الماء، ولكن إذا ترك في الماء فسوف يموت، فما هذا الشيء؟", {
    "السمك.": false,
    "الثلج.": true,
    "الصدف.": false,
    "الورق.": false,
  }),
  QuestionModel("كم عدد المليمترات في 1 سم؟", {
    "11.": false,
    " 20 .": false,
    "10.": true,
    "15.": false,
  }),
  QuestionModel("ما هو الشيء الذي كلما ازداد كلما نقص؟", {
    "العمر.": true,
    "الحفرة.": false,
    "الطول.": false,
    "النور.": false,
  }),
  QuestionModel("ما هو الشيء الذي تكون له رأس واحدة، ولكن ليس لديه عينين؟", {
    "اللمبة.": false,
    "العصا.": false,
    "الدبوس.": true,
    "النمل.": false,
  }),
  QuestionModel(
      " كم عدد الألوان الموجودة في قوس قزح؟", {
    "5": false,
    "4": false,
    "8": false,
    "7": true,
  }),
  QuestionModel("كم عدد الأضلاع الموجودة في المثلث؟", {
    "4": false,
    "6": false,
    "3": true,
    "9": false,
  }),
  QuestionModel(
      "في أي اتجاه تشرق الشمس؟",
      {
        "الغرب.": false,
        "الشمال.": false,
        "الشرق.": true,
        "الجنوب.": false,
      }),
  QuestionModel(
      "في أي دولة يقع نهر النيل؟", {
    "المغرب.": false,
    "مصر.": true,
    "فلسطين.": false,
    "الجزائر.": false,
  }),
];
