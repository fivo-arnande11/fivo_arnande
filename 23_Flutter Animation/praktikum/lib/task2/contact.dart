import 'package:flutter/material.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void AddContact(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}

class GetContact {
  final String id;
  final String name;
  final String phone;
  GetContact({
    required this.id,
    required this.name,
    required this.phone,
  });
}