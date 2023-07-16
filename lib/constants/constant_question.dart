import '../data/questions.dart';

List<getquestion> getquestionslist() {
  var firstquestion = getquestion();
  firstquestion.questiontitle = 'نام من چیست ؟';
  firstquestion.answer = [
    'سجاد',
    'علی',
    'حسن',
    'اسماییل',
  ];
  firstquestion.trueanswer = '0';

  var secondquestion = getquestion();
  secondquestion.questiontitle = 'هرسال چه اندازه زمین به خورشید نزدیک میشود ؟';
  secondquestion.answer = [
    'هشت دهم',
    'یک دهم',
    'یک متر',
    'بیسنت متر',
  ];
  secondquestion.trueanswer = '1';



  return [firstquestion,secondquestion];
}
