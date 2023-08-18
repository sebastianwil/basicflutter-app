import 'package:flutter/material.dart';
import 'package:reto_app/design/colors.dart';
import 'package:reto_app/design/radius.dart';
import 'package:reto_app/widgets/home_app_bar_title.dart';
import 'package:reto_app/widgets/home_body.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var buttonStyleInactive = ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.brandLightColor,
      shadowColor: AppColors.brandLightColor);
    var buttonStyleActive = ElevatedButton.styleFrom(
      backgroundColor: AppColors.brandSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),);
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
            const TopHomePageBody(),
            MidHomePageBody(
              categoriesBtnStyle: buttonStyleActive, 
              recentTransactionsBtnStyle: buttonStyleInactive, 
              categorieBtnAction: () => print('Se oprimió categorías'),
              recentBtnAction: () => print('Se oprimió recent transactions'),
            )
          ],
        ),
      );
  }
}

class MidHomePageBody extends StatelessWidget {
  final ButtonStyle categoriesBtnStyle;
  final ButtonStyle recentTransactionsBtnStyle;
  final void Function()? categorieBtnAction;
  final void Function()? recentBtnAction;
  const MidHomePageBody(
    {super.key, 
    required this.categoriesBtnStyle, 
    required this.recentTransactionsBtnStyle, 
    required this.categorieBtnAction, 
    required this.recentBtnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: 104,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.brandLightColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: categoriesBtnStyle,
            onPressed: categorieBtnAction, 
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: AppColors.brandDarkColor, fontSize: 14),
                ),
              )),
           ElevatedButton(
            style: recentTransactionsBtnStyle,
            onPressed: recentBtnAction, 
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Text(
                'Recent transactions',
                style: TextStyle(
                  color: AppColors.brandLigthDarkColor, fontSize: 14),
                ),
              )),
        ],
      ),
    );
  }
}