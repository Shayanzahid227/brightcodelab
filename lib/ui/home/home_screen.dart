import 'package:brightcodelab/customWidgets/home_screen.dart';
import 'package:brightcodelab/ui/home/home_screen_v_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen_123 extends StatefulWidget {
  const HomeScreen_123({super.key});

  @override
  State<HomeScreen_123> createState() => _HomeScreen_123State();
}

class _HomeScreen_123State extends State<HomeScreen_123> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenVeiwModel(),
      child: Consumer<HomeScreenVeiwModel>(
          builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.grey[600],
              drawer: Drawer(),
              appBar: AppBar(
                actions: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
                backgroundColor: Color(0xfff4463fb),
                title: Text("Fishing Knots"),
                centerTitle: false,
              ),
              body: ListView(
                children: [
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.star_border), Text("My favorite")],
                    ),
                  ),
                  ...model.listhomeScreen.map((items) {
                    return CustomHomeScreenKnotsWidget(
                        object_homeScreenModel: items);
                  }).toList()
                ],
              ))),
    );
  }
}

/*import 'package:code_structure/core/constants/strings.dart';
import 'package:code_structure/custom_widgets/home_screen.dart';
import 'package:code_structure/ui/screens/home/home_screen_v_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreenn extends StatefulWidget {
  const HomeScreenn({super.key});

  @override
  State<HomeScreenn> createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenVeiwModel(),
      child: Consumer<HomeScreenVeiwModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: Colors.grey[600],
                drawer: Drawer(),
                appBar: AppBar(
                  actions: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    )
                  ],
                  backgroundColor: Color(0xfff4463fb),
                  title: Text("Fishing Knots"),
                  centerTitle: false,
                ),
                body: ListView(
                  children: [
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      // decoration: BoxDecoration(),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Text(
                              "My favorites",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Use ListView.builder for dynamic content
                    ...model.listhomeScreen.map((item) {
                      return CustomHomeScreenKnotsWidget(
                          object_homeScreenModel: item);
                    }).toList(),
                  ],
                ),
              )),
    );
  }
}
*/
