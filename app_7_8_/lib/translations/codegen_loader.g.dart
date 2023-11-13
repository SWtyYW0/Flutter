
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> tr = {
   "hello": "Merhaba"
};
static const Map<String,dynamic> en = {
  "hello": "Hi"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"tr": tr, "en": en};
}