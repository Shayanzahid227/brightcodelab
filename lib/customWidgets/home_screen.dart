import 'package:brightcodelab/core/models/home_screen_model.dart';
import 'package:flutter/material.dart';

class CustomHomeScreenKnotsWidget extends StatelessWidget {
  // final String imgUrl;
  HomeScreenModel object_homeScreenModel = HomeScreenModel();

  CustomHomeScreenKnotsWidget({required this.object_homeScreenModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0, // Fixed height
      width: double.infinity, // Fixed width
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Image.asset(
        "${object_homeScreenModel.ImgUrl}",
        fit: BoxFit.cover, // Adjust the image fit as needed
      ),
    );
  }
}
