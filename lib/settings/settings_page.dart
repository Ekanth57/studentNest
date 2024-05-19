import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage(this.language);
  final String? language;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = ''; // Default language

  List<String> _languages = ['English', 'हिंदी', 'español','française'];

  Future<void> _onLanguageChange(String? newLanguage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()   {
      _selectedLanguage = newLanguage!;
      if(_selectedLanguage=="English"){
        context.setLocale(Locale('en','US'));
        prefs.setString('language', "English");
      }
      else if(_selectedLanguage=="हिंदी"){
        context.setLocale(Locale('hi','IN'));

        prefs.setString('language', "हिंदी");
      }
      else if(_selectedLanguage=="español"){
        context.setLocale(Locale('es','SP'));

        prefs.setString('language', "español");
      }
      else if(_selectedLanguage=="française"){
        context.setLocale(Locale('fr','FR'));

        prefs.setString('language', "française");
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _selectedLanguage=widget.language!;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: Text(tr('changeLanguage'),
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: .8.sw,
              height: .1.sw,
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(
                          0, 4), // changes position of shadow
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(tr('changeLanguage'),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: .04.sw
                  ),
                  ),
                  SizedBox(width: 10,),
                  DropdownButton<String>(
                    value: _selectedLanguage,
                    onChanged: _onLanguageChange,
                    items: _languages.map((language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(language),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
