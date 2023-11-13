// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "fullname": "Full name*",
  "fullnameHint": "What do people call you?",
  "fullnameError": "Invalid fullname",
  "phone": "Phone*",
  "phoneHint": "Where can we reach you?",
  "phoneHelper": "Phone format: XXXXXXXXXXX",
  "phoneError": "Invalid phone format",
  "email": "Email*",
  "emailHint": "How can we text you?",
  "emailError": "Invalid email",
  "lifeStory": "Life story",
  "lifeStoryHint": "Tell us your life story",
  "lifeStoryHelper": "Keep it short, this is just a demo",
  "country": "Country*",
  "countryHint": "What country are you from?",
  "countryError": "Please select a country",
  "password": "Password*",
  "passwordHint": "Enter the password",
  "passwordConfirm": "Confirm Password*",
  "passwordConfirmHint": "Enter the confirm password",
  "passwordErrorIsEmpty": "Passwords must be filled in",
  "passwordErrorLenght": "Password has to be 9 or more letters",
  "passwordErrorIsNotEquals": "Passwords must match",
  "submit": "Submit",
  "kazakhstan": "Kazakhstan",
  "usa": "USA",
  "norway": "Norway",
  "switzerland": "Switzerland"
};
static const Map<String,dynamic> ru = {
  "fullname": "Полное имя*",
  "fullnameHint": "Как тебя называют люди?",
  "fullnameError": "Недопустимое полное имя",
  "phone": "Телефон*",
  "phoneHint": "Где мы можем с вами связаться?",
  "phoneHelper": "Формат телефона: XXXXXXXXXXX",
  "phoneError": "Недопустимый формат телефона",
  "email": "Электронная почта*",
  "emailHint": "Как мы можем отправить вам сообщение?",
  "emailError": "Неверная электронная почта",
  "lifeStory": "История жизни",
  "lifeStoryHint": "Расскажите нам историю своей жизни",
  "lifeStoryHelper": "Короче, это всего лишь демонстрация",
  "country": "Страна*",
  "countryHint": "Из какой вы страны?",
  "countryError": "Пожалуйста, выберите страну",
  "password": "Пароль*",
  "passwordHint": "Введите пароль",
  "passwordConfirm": "Введите подтверждающий пароль*",
  "passwordConfirmHint": "Введите подтверждающий пароль",
  "passwordErrorIsEmpty": "Пароли должны быть заполнены",
  "passwordErrorLenght": "Пароль должен состоять из 9 или более букв",
  "passwordErrorIsNotEquals": "Пароли должны совпадать",
  "submit": "Отправить",
  "kazakhstan": "Казахстан",
  "usa": "США",
  "norway": "Норвегия",
  "switzerland": "Швейцария"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
