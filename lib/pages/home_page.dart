import 'package:flutter/material.dart';
import 'package:reto_app/design/colors.dart';
import 'package:reto_app/design/radius.dart';
import 'package:reto_app/widgets/home_app_bar_title.dart';
import 'package:reto_app/widgets/home_body.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar( 
          toolbarHeight: 97,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft:  AppRadius.s, 
              bottomRight: AppRadius.s)),
          backgroundColor: AppColors.brandLightColor,
          title: const Padding(
            padding:  EdgeInsets.fromLTRB(16,45,16,12),
            child: HomeAppBarTitle(),
          ),
        ),
        body: Column(
          children: [
            TopHomePageBody()
          ],
        ),
      );
  }
}