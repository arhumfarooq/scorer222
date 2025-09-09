import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'welcome': 'Welcome to Guestly',
        },
        'es_ES': {
          'hello': 'Hola',
          'welcome': 'Bienvenido a Guestly',
        },
        'fr_FR': {
          'hello': 'Bonjour',
          'welcome': 'Bienvenue sur Guestly',
        },
        'de_DE': {
          'hello': 'Hallo',
          'welcome': 'Willkommen bei Guestly',
        },
        'it_IT': {
          'hello': 'Ciao',
          'welcome': 'Benvenuto in Guestly',
        },
        'ar_AR': {
          'hello': 'مرحبا',
          'welcome': 'مرحبا بكم في Guestly',
        },
        'af_AF': {
          'hello': 'Hallo',
          'welcome': 'Welkom by Guestly',
        },
      };
}
