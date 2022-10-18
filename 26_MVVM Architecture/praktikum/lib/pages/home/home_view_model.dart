import 'package:flutter/cupertino.dart';

import '../../models/user.dart';
import '../../service/services.dart';

class HomeViewModel with ChangeNotifier {
  List<Data> userData = [];
  bool isLoading = false;

  void getUser() async {
    //panggil fetchData dari class myServices
    MyService services = MyService();
    isLoading = true;
    final api = await services.fetchData();
    userData = api!;
    isLoading = false;

    notifyListeners();
  }
}
