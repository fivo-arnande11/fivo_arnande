import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weekly_task/screen/data_user.dart';

class AboutModel extends ChangeNotifier {
  late SharedPreferences registerdata;
  bool _newUser = false;
  bool _toogle = true;
  String _username = '';
  String _email = '';
  String _message = '';

  bool get toogle => _toogle;
  bool get newUser => _newUser;
  String get username => _username;
  String get email => _email;
  String get message => _message;

  Future<void> checkRegister(BuildContext context) async {
    registerdata = await SharedPreferences.getInstance();
    _newUser = registerdata.getBool('register') ?? true;
    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const DataUser(),
          ),
          (route) => false);
    }
    notifyListeners();
  }

  Future<void> addBool(bool a) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setBool('register', a);
    notifyListeners();
  }

  Future<void> setName(String username) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('username', username);
    notifyListeners();
  }

  Future<void> setEmail(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('email', email);
    notifyListeners();
  }

  Future<void> setMessage(String message) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('message', message);
    notifyListeners();
  }


  Future<void> initial() async {
    registerdata = await SharedPreferences.getInstance();
    _username = registerdata.getString('username').toString();
    _email = registerdata.getString('email').toString();
    _message = registerdata.getString('message').toString();
    notifyListeners();
  }

  Future<void> deleteName(String username) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.remove('username');
    notifyListeners();
  }

  Future<void> deleteEmail(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.remove('email');
    notifyListeners();
  }

  Future<void> deleteMessage(String message) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.remove('message');
    notifyListeners();
  }

  toogleTheme() {
    _toogle = !_toogle;
    notifyListeners();
  }
}
