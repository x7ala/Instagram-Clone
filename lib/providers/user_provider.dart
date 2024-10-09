import 'package:flutter/widgets.dart';
import 'package:instagram_flutter/models/user.dart';
import 'package:instagram_flutter/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    /*try {
      User user = await _authMethods.getUserDetails();
      _user = user ??
          User(
              uid: 'TF0siay2tBTGyb1qMClA9aypegz1',
              username: 'Hanoon',
              photoUrl:
                  'https://firebasestorage.googleapis.com/v0/b/instagram-internship.appspot.com/o/profilePics%2FTF0siay2tBTGyb1qMClA9aypegz1?alt=media&token=b481bb94-db14-41c2-bdb7-0f9e33a07c85',
              email: 'hanoon@gmail.com',
              bio: 'hanoon',
              followers: [],
              following: []);
      notifyListeners();
    } catch (e) {
      // Handle the error gracefully, log it, or return a default user.
      print('Error fetching user data: $e');
      // You can assign a default user or handle the error differently as needed.
      // _user = User(/* provide default values here */);
    }
  }*/
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
