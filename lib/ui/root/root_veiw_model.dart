import 'package:brightcodelab/core/enums/veiw_state.dart';
import 'package:brightcodelab/core/other/base_veiw_model.dart';
import 'package:brightcodelab/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

class RootViewModel extends BaseViewModel {
  // final PageController pageController = PageController(initialPage: 0);

  int selectedScreen = 0;

  List<Widget> allScreen = [
    const HomeScreen_123()
    // call screen here according to index
    // const Home_Screen_0(),
    // const BookingScreen_ok(),
    // const ProfileSCreen_00()
  ];

  ///
  /// Constructor
  ///
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }

  // int selectIndex = 0;

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
