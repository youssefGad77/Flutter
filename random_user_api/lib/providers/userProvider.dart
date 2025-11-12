

import 'package:flutter/widgets.dart';
import 'package:random_user_api/models/userModel.dart';
import 'package:random_user_api/services/userService.dart';

class Userprovider extends ChangeNotifier
{
  userModel? userData;
   Future <void> fetchUsers ()async{
     userData = await userService.fetchRandomUser();
      notifyListeners();
    }
}