import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:new_quran_pc/modules/get_juz.dart';
import 'package:new_quran_pc/screens/home_screen.dart';
import 'package:new_quran_pc/screens/sign_up.dart';
import 'package:new_quran_pc/screens/tilaawat.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:quran_app_ramadan/screens/home_screen.dart';

import 'modules/get_ayat_al_kursi.dart';
import 'modules/get_juz_translation.dart';
import 'modules/get_surah.dart';
import 'modules/get_surah_translation.dart';
// import 'package:firebase_auth/firebase_auth.dart';

bool surah = true;

class Utilties {
static Future<SharedPreferences> createSharedPrefsInstance() async {
  SharedPreferences prefsInUtilities = await SharedPreferences
      .getInstance();

    return prefsInUtilities;
}

  static int currentRuku = 0;
static bool selected = true;
  static List<String> newSurahFilteredList = [];
  static List<String> newJuzFilteredList = [];

  static List<String> newSurahFilteredArabicList = [];
  static List<String> newJuzFilteredArabicList = [];
  static GetSurah? obj;
  static GetJuz? obj1;
  static GetTranslationOfSurah? obj2;
  static GetTranslationOfJuz? obj3;
  static GetAyatAlKursi? obj4;

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool ayatAlKursiText = false;
static SignIn(String email , String password , BuildContext
context) async{
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}
  static signUp(String email , String password , BuildContext context) async{
    print(email);
    print(password);
    try {
      FirebaseAuth object = FirebaseAuth.instance;
      if (passwordController.text != confirmPasswordController.text) {
        throw ("Password and confirm password not match");
      }
      UserCredential credential = await object.createUserWithEmailAndPassword(email: email, password: password);

      // if (selected) {
      //
      // }
     if(selected){
       final SharedPreferences prefs = await SharedPreferences.getInstance();
       await prefs.setString("email", email);
     }
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    } catch (error) {
      print(error);
    }
  }



  static List<String> surahUrduTranslation = [];
  static String juzUrduTranslation = "";
  static Future<GetTranslationOfSurah> getSurahTranslation(int index) async {
    ayatAlKursiText = false;

    Uri url = Uri.http("api.alquran.cloud", "/v1/surah/${index}/en"
        ".asad");
    Response response = await http.get(url);
    String body = response.body;
    var decodedJson = jsonDecode(body);
    GetTranslationOfSurah obj = GetTranslationOfSurah.fromJson(decodedJson);
    return obj;
  }

  static Future<GetTranslationOfJuz> getJuzTranslation(int index) async {
    ayatAlKursiText = false;
    Uri url = Uri.http("api.alquran.cloud", "/v1/juz/${index}/en.asad");
    Response response = await http.get(url);
    String body = response.body;
    var decodedJson = jsonDecode(body);
    GetTranslationOfJuz obj = GetTranslationOfJuz.fromJson(decodedJson);
    return obj;
  }

  static List<String> juz = [
    'Alif Lam Meem',
    'Sayaqool',
    'Tilkal Rusul',
    'Lan Tana Loo',
    'Wal Mohsanat',
    'La Yuhibbullah',
    'Wa Iza Samiu',
    'Wa Lau Annana',
    'Qalal Malao',
    'Wa A’lamu',
    'Yatazeroon',
    'Wa Mamin Da’abba',
    'Wa Ma Ubrioo',
    'Rabba Ma Tad’oon',
    'Subhanallazi',
    'Wa A’lamu',
    'Aqtaaribat',
    'Qadd Aflaha',
    'Wa Qalallazi',
    'A’lam Tara',
    'Utlu Ma Oohiya',
    'Wa Man Yaqnut',
    'Wa Ma Liya',
    'Wa Man Yaqnut',
    'Wa A’lamu',
    'Ha Meem',
    'Qalal Malao',
    'Tabarakallazi',
    'Amma Yatasa’aloon',
  ];
  static List<String> juzArabic = [
    'الم',
    'سَيَقُولُ',
    'تِلْكَ الرُّسُلُ',
    'لَنْ تَنَالُوا',
    'وَالْمُحْصَنَاتُ',
    'لَا يُحِبُّ اللَّهُ',
    'وَإِذَا سَمِعُوا',
    'وَلَوْ أَنَّنَا',
    'قَالَ الْمَلَأُ',
    'وَاعْلَمُوا',
    'يَتَزَوَّجُونَ',
    'وَمَا مِنْ دَابَّةٍ',
    'وَمَا أُبَرِّئُ',
    'رَبَّمَا تَدَّعُونَ',
    'سُبْحَانَ الَّذِي',
    'وَاعْلَمُوا',
    'أَقْتَرَبَتِ',
    'قَدْ أَفْلَحَ',
    'وَقَالَ الَّذِينَ',
    'أَعْلَمُ تَرَا',
    'اقْرَأْ مَا أُوحِيَ',
    'وَمَن يَقْنُتْ',
    'وَمَا لِيَ',
    'وَمَن يَقْنُتْ',
    'وَاعْلَمُوا',
    'حَمٓ',
    'قَالَ الْمَلَأُ',
    'تَبَارَكَ الَّذِي',
    'عَمَّ يَتَسَآءَلُونَ',
  ];

  static List<String> surahNamesArabic = [
    'الفاتحة',
    'البقرة',
    'آل عمران',
    'النساء',
    'المائدة',
    'الأنعام',
    'الأعراف',
    'الأنفال',
    'التوبة',
    'يونس',
    'هود',
    'يوسف',
    'الرعد',
    'إبراهيم',
    'الحجر',
    'النحل',
    'الإسراء',
    'الكهف',
    'مريم',
    'طه',
    'الأنبياء',
    'الحج',
    'المؤمنون',
    'النور',
    'الفرقان',
    'الشعراء',
    'النمل',
    'القصص',
    'العنكبوت',
    'الروم',
    'لقمان',
    'السجدة',
    'الأحزاب',
    'سبأ',
    'فاطر',
    'يس',
    'الصافات',
    'ص',
    'الزمر',
    'غافر',
    'فصلت',
    'الشورى',
    'الزخرف',
    'الدخان',
    'الجاثية',
    'الأحقاف',
    'محمد',
    'الفتح',
    'الحجرات',
    'ق',
    'الذاريات',
    'الطور',
    'النجم',
    'القمر',
    'الرحمن',
    'الواقعة',
    'الحديد',
    'المجادلة',
    'الحشر',
    'الممتحنة',
    'الصف',
    'الجمعة',
    'المنافقون',
    'التغابن',
    'الطلاق',
    'التحريم',
    'الملك',
    'القلم',
    'الحاقة',
    'المعارج',
    'نوح',
    'الجن',
    'المزمل',
    'المدثر',
    'القيامة',
    'الإنسان',
    'المرسلات',
    'النبأ',
    'النازعات',
    'عبس',
    'التكوير',
    'الإنفطار',
    'المطففين',
    'الإنشقاق',
    'البروج',
    'الطارق',
    'الأعلى',
    'الغاشية',
    'الفجر',
    'البلد',
    'الشمس',
    'الليل',
    'الضحى',
    'الشرح',
    'التين',
    'العلق',
    'القدر',
    'البينة',
    'الزلزلة',
    'العاديات',
    'القارعة',
    'التكاثر',
    'العصر',
    'الهمزة',
    'الفيل',
    'قريش',
    'الماعون',
    'الكوثر',
    'الكافرون',
    'النصر',
    'المسد',
    'الإخلاص',
    'الفلق',
    'الناس',
  ];
  static List<String> surahNames = [
    'Al-Fatiha',
    'Al-Baqarah',
    'Aal-E-Imran',
    'An-Nisa\'',
    'Al-Ma\'idah',
    'Al-An\'am',
    'Al-A\'raf',
    'Al-Anfal',
    'At-Tawbah',
    'Yunus',
    'Hud',
    'Yusuf',
    'Ar-Ra\'d',
    'Ibrahim',
    'Al-Hijr',
    'An-Nahl',
    'Al-Isra\'',
    'Al-Kahf',
    'Maryam',
    'Ta-Ha',
    'Al-Anbiya',
    'Al-Hajj',
    'Al-Mu\'minun',
    'An-Nur',
    'Al-Furqan',
    'Ash-Shu\'ara',
    'An-Naml',
    'Al-Qasas',
    'Al-Ankabut',
    'Ar-Rum',
    'Luqman',
    'As-Sajda',
    'Al-Ahzab',
    'Saba\'',
    'Fatir',
    'Ya-Sin',
    'As-Saffat',
    'Sad',
    'Az-Zumar',
    'Ghafir',
    'Fussilat',
    'Ash-Shura',
    'Az-Zukhruf',
    'Ad-Dukhan',
    'Al-Jathiya',
    'Al-Ahqaf',
    'Muhammad',
    'Al-Fath',
    'Al-Hujurat',
    'Qaf',
    'Adh-Dhariyat',
    'At-Tur',
    'An-Najm',
    'Al-Qamar',
    'Ar-Rahman',
    'Al-Waqi\'a',
    'Al-Hadid',
    'Al-Mujadila',
    'Al-Hashr',
    'Al-Mumtahina',
    'As-Saff',
    'Al-Jumu\'a',
    'Al-Munafiqun',
    'At-Taghabun',
    'At-Talaq',
    'At-Tahrim',
    'Al-Mulk',
    'Al-Qalam',
    'Al-Haaqqa',
    'Al-Ma\'arij',
    'Nuh',
    'Al-Jinn',
    'Al-Muzzammil',
    'Al-Muddathir',
    'Al-Qiyama',
    'Al-Insan',
    'Al-Mursalat',
    'An-Naba\'',
    'An-Nazi\'at',
    'Abasa',
    'At-Takwir',
    'Al-Infitar',
    'Al-Mutaffifin',
    'Al-Inshiqaq',
    'Al-Burooj',
    'At-Tariq',
    'Al-Ala',
    'Al-Ghashiyah',
    'Al-Fajr',
    'Al-Balad',
    'Ash-Shams',
    'Al-Lail',
    'Adh-Dhuhaa',
    'Ash-Sharh',
    'At-Tin',
    'Al-Alaq',
    'Al-Qadr',
    'Al-Bayyina',
    'Az-Zalzalah',
    'Al-Adiyat',
    'Al-Qariah',
    'At-Takathur',
    'Al-Asr',
    'Al-Humazah',
    'Al-Fil',
    'Quraish',
    'Al-Ma\'un',
    'Al-Kawthar',
    'Al-Kafirun',
    'An-Nasr',
    'Al-Masad',
    'Al-Ikhlas',
    'Al-Falaq',
    'An-Nas',
  ];

  static List<RevelationType> surahRevelationTypes = [
    RevelationType.Meccan, // Al-Fatiha
    RevelationType.Medinan, // Al-Baqarah
    RevelationType.Medinan, // Aal-E-Imran
    RevelationType.Medinan, // An-Nisa'
    RevelationType.Medinan, // Al-Ma'idah
    RevelationType.Meccan, // Al-An'am
    RevelationType.Meccan, // Al-A'raf
    RevelationType.Medinan, // Al-Anfal
    RevelationType.Medinan, // At-Tawbah
    RevelationType.Meccan, // Yunus
    RevelationType.Meccan, // Hud
    RevelationType.Meccan, // Yusuf
    RevelationType.Meccan, // Ar-Ra'd
    RevelationType.Meccan, // Ibrahim
    RevelationType.Meccan, // Al-Hijr
    RevelationType.Meccan, // An-Nahl
    RevelationType.Meccan, // Al-Isra'
    RevelationType.Meccan, // Al-Kahf
    RevelationType.Meccan, // Maryam
    RevelationType.Meccan, // Ta-Ha
    RevelationType.Meccan, // Al-Anbiya
    RevelationType.Meccan, // Al-Hajj
    RevelationType.Meccan, // Al-Mu'minun
    RevelationType.Meccan, // An-Nur
    RevelationType.Meccan, // Al-Furqan
    RevelationType.Meccan, // Ash-Shu'ara
    RevelationType.Meccan, // An-Naml
    RevelationType.Meccan, // Al-Qasas
    RevelationType.Meccan, // Al-Ankabut
    RevelationType.Meccan, // Ar-Rum
    RevelationType.Meccan, // Luqman
    RevelationType.Meccan, // As-Sajda
    RevelationType.Medinan, // Al-Ahzab
    RevelationType.Meccan, // Saba'
    RevelationType.Meccan, // Fatir
    RevelationType.Meccan, // Ya-Sin
    RevelationType.Meccan, // As-Saffat
    RevelationType.Meccan, // Sad
    RevelationType.Meccan, // Az-Zumar
    RevelationType.Meccan, // Ghafir
    RevelationType.Meccan, // Fussilat
    RevelationType.Meccan, // Ash-Shura
    RevelationType.Meccan, // Az-Zukhruf
    RevelationType.Meccan, // Ad-Dukhan
    RevelationType.Meccan, // Al-Jathiya
    RevelationType.Meccan, // Al-Ahqaf
    RevelationType.Meccan, // Muhammad
    RevelationType.Meccan, // Al-Fath
    RevelationType.Medinan, // Al-Hujurat
    RevelationType.Meccan, // Qaf
    RevelationType.Meccan, // Adh-Dhariyat
    RevelationType.Meccan, // At-Tur
    RevelationType.Meccan, // An-Najm
    RevelationType.Meccan, // Al-Qamar
    RevelationType.Meccan, // Ar-Rahman
    RevelationType.Meccan, // Al-Waqi'a
    RevelationType.Meccan, // Al-Hadid
    RevelationType.Medinan, // Al-Mujadila
    RevelationType.Medinan, // Al-Hashr
    RevelationType.Medinan, // Al-Mumtahina
    RevelationType.Medinan, // As-Saff
    RevelationType.Medinan, // Al-Jumu'a
    RevelationType.Medinan, // Al-Munafiqun
    RevelationType.Medinan, // At-Taghabun
    RevelationType.Medinan, // At-Talaq
    RevelationType.Medinan, // At-Tahrim
    RevelationType.Meccan, // Al-Mulk
    RevelationType.Meccan, // Al-Qalam
    RevelationType.Meccan, // Al-Haaqqa
    RevelationType.Meccan, // Al-Ma'arij
    RevelationType.Meccan, // Nuh
    RevelationType.Meccan, // Al-Jinn
    RevelationType.Meccan, // Al-Muzzammil
    RevelationType.Meccan, // Al-Muddathir
    RevelationType.Meccan, // Al-Qiyama
    RevelationType.Meccan, // Al-Insan
    RevelationType.Meccan, // Al-Mursalat
    RevelationType.Meccan, // An-Naba'
    RevelationType.Meccan, // An-Nazi'at
    RevelationType.Meccan, // Abasa
    RevelationType.Meccan, // At-Takwir
    RevelationType.Meccan, // Al-Infitar
    RevelationType.Meccan, // Al-Mutaffifin
    RevelationType.Meccan, // Al-Inshiqaq
    RevelationType.Meccan, // Al-Burooj
    RevelationType.Meccan, // At-Tariq
    RevelationType.Meccan, // Al-Ala
    RevelationType.Meccan, // Al-Ghashiyah
    RevelationType.Meccan, // Al-Fajr
    RevelationType.Meccan, // Al-Balad
    RevelationType.Meccan, // Ash-Shams
    RevelationType.Meccan, // Al-Lail
    RevelationType.Meccan, // Adh-Dhuhaa
    RevelationType.Meccan, // Ash-Sharh
    RevelationType.Meccan, // At-Tin
    RevelationType.Meccan, // Al-Alaq
    RevelationType.Meccan, // Al-Qadr
    RevelationType.Meccan, // Al-Bayyina
    RevelationType.Meccan, // Az-Zalzalah
    RevelationType.Meccan, // Al-Adiyat
    RevelationType.Meccan, // Al-Qariah
    RevelationType.Meccan, // At-Takathur
    RevelationType.Meccan, // Al-Asr
    RevelationType.Meccan, // Al-Humazah
    RevelationType.Meccan, // Al-Fil
    RevelationType.Meccan, // Quraish
    RevelationType.Meccan, // Al-Ma'un
    RevelationType.Meccan, // Al-Kawthar
    RevelationType.Meccan, // Al-Kafirun
    RevelationType.Meccan, // An-Nasr
    RevelationType.Meccan, // Al-Masad
    RevelationType.Meccan, // Al-Ikhlas
    RevelationType.Meccan, // Al-Falaq
    RevelationType.Meccan, // An-Nas
  ];
  static List<int> surahVerseCounts = [
    7, // Al-Fatiha
    286, // Al-Baqarah
    200, // Aal-E-Imran
    176, // An-Nisa'
    120, // Al-Ma'idah
    165, // Al-An'am
    206, // Al-A'raf
    75, // Al-Anfal
    129, // At-Tawbah
    109, // Yunus
    123, // Hud
    111, // Yusuf
    43, // Ar-Ra'd
    52, // Ibrahim
    99, // Al-Hijr
    128, // An-Nahl
    111, // Al-Isra'
    110, // Al-Kahf
    98, // Maryam
    135, // Ta-Ha
    112, // Al-Anbiya
    78, // Al-Hajj
    118, // Al-Mu'minun
    64, // An-Nur
    77, // Al-Furqan
    227, // Ash-Shu'ara
    93, // An-Naml
    88, // Al-Qasas
    69, // Al-Ankabut
    60, // Ar-Rum
    34, // Luqman
    30, // As-Sajda
    73, // Al-Ahzab
    54, // Saba'
    45, // Fatir
    83, // Ya-Sin
    182, // As-Saffat
    88, // Sad
    75, // Az-Zumar
    85, // Ghafir
    54, // Fussilat
    53, // Ash-Shura
    89, // Az-Zukhruf
    59, // Ad-Dukhan
    37, // Al-Jathiya
    35, // Al-Ahqaf
    38, // Muhammad
    29, // Al-Fath
    18, // Al-Hujurat
    45, // Qaf
    60, // Adh-Dhariyat
    49, // At-Tur
    62, // An-Najm
    55, // Al-Qamar
    78, // Ar-Rahman
    96, // Al-Waqi'a
    29, // Al-Hadid
    22, // Al-Mujadila
    24, // Al-Hashr
    13, // Al-Mumtahina
    14, // As-Saff
    11, // Al-Jumu'a
    11, // Al-Munafiqun
    18, // At-Taghabun
    6, // At-Talaq
    18, // At-Tahrim
    30, // Al-Mulk
    52, // Al-Qalam
    52, // Al-Haaqqa
    44, // Al-Ma'arij
    28, // Nuh
    55, // Al-Jinn
    20, // Al-Muzzammil
    56, // Al-Muddathir
    40, // Al-Qiyama
    31, // Al-Insan
    50, // Al-Mursalat
    40, // An-Naba'
    46, // An-Nazi'at
    42, // Abasa
    29, // At-Takwir
    19, // Al-Infitar
    36, // Al-Mutaffifin
    25, // Al-Inshiqaq
    22, // Al-Burooj
    17, // At-Tariq
    19, // Al-Ala
    26, // Al-Ghashiyah
    30, // Al-Fajr
    20, // Al-Balad
    15, // Ash-Shams
    21, // Al-Lail
    11, // Adh-Dhuhaa
    8, // Ash-Sharh
    8, // At-Tin
    19, // Al-Alaq
    5, // Al-Qadr

    8, // Al-Bayyina
    8, // Az-Zalzalah
    11, // Al-Adiyat
    11, // Al-Qariah
    8, // At-Takathur
    3, // Al-Asr
    9, // Al-Humazah
    5, // Al-Fil
    4, // Quraish
    7, // Al-Ma'un
    3, // Al-Kawthar
    6, // Al-Kafirun
    3, // An-Nasr
    5, // Al-Masad
    4, // Al-Ikhlas
    5, // Al-Falaq
    6, // An-Nas
  ];

  static TextEditingController controllerOfSearchHere = TextEditingController();

  static Future<GetJuz> getJuzText(int index) async {
    SharedPreferences prefs = await createSharedPrefsInstance();
    prefs.setString("lastReading", juz[index-1]);
    ayatAlKursiText = false;

    Uri url =
        Uri.http("api.alquran.cloud", "/v1/juz/${index}"
        "/quran-uthmani");
    Response response = await http.get(url);
    var decodedJson = jsonDecode(response.body);
    GetJuz obj = GetJuz.fromJson(decodedJson);

    return obj;
  }


  static Future<GetAyatAlKursi> getAyatAlKursiText() async {
    Uri url = Uri.http("api.alquran.cloud", "/v1/ayah/262/ar.asad");
    Response response = await http.get(url);
    var decodedJson = await jsonDecode(response.body);
    GetAyatAlKursi obj =  await GetAyatAlKursi.fromJson(decodedJson);
    return obj;
  }

static Future<GetSurah> getSurahText(int index) async{
    SharedPreferences prefs = await createSharedPrefsInstance();
    prefs.setString("lastReading", surahNames[index-1]);
    prefs.setInt("surahNumber" , index);
  ayatAlKursiText = false;

  Uri url = Uri.http("api.alquran.cloud" , "/v1/surah/${index}")

 ;
  Response response=await http.get(url);
  String body = response.body;
  var decodedJson = jsonDecode(body);
  GetSurah obj = GetSurah.fromJson(decodedJson);
  return obj;
  // print(decodedJson);

}

}



enum RevelationType { Meccan, Medinan }
