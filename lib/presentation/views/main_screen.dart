import 'package:avatar_course2_4/core/resources/manager_assets.dart';
import 'package:avatar_course2_4/core/resources/manager_colors.dart';
import 'package:avatar_course2_4/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_4/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_4/core/resources/manager_fonts.dart';
import 'package:avatar_course2_4/core/resources/manager_height.dart';
import 'package:avatar_course2_4/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_4/core/resources/manager_strings.dart';
import 'package:avatar_course2_4/core/resources/manager_width.dart';
import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../core/resources/manager_radius.dart';
import '../../core/widgets/base_text_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: baseText(
          text: ManagerStrings.appName,
          fontSize: ManagerFontSizes.s24,
          fontFamily: ManagerFont.appFont,
          fontWeight: ManagerFontWeight.w600,
          color: ManagerColors.white70,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: ManagerColors.white70,
              size: ManagerIconSizes.s40,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ManagerColors.primaryColor,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add, color: ManagerColors.white70,),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ManagerAssets.azkarImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: ManagerWidth.w100,
              height: ManagerHeights.h40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ManagerColors.primaryColor,
                borderRadius: BorderRadius.circular(
                ManagerRadius.r12,
              ),
              ),
              child: baseText(
                text: count.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
