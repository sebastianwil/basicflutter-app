import 'package:flutter/material.dart';
import 'package:reto_app/design/colors.dart';
import 'package:reto_app/design/radius.dart';
import 'package:reto_app/widgets/custom_money_display.dart';
import 'package:reto_app/widgets/summary_card.dart';
class TopHomePageBody extends StatelessWidget {
  const TopHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      transform:  Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
          color:  AppColors.brandPrimaryColor,
          borderRadius: BorderRadius.only(
                bottomLeft: AppRadius.s,
                bottomRight: AppRadius.s)),
          height: 389,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                  margin: const EdgeInsets.only( top:56),
                  child: Text(
                    'Your Budget',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),),
              CustomMoneyDisplay(
                amount: 2868000.12, 
                padding: const EdgeInsets.only(top:8, right: 4),
                amountStyle: Theme.of(context).textTheme.displayLarge!, 
                amountStyleSmall: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.brandLightColor
                ),
              ),
              SummaryCard(
                typeSummaryCard: TypeSummaryCard.incomes, 
                amount: 7000000, 
                period: 'From January 1 to Januray 31',
                action: () =>  print('incomes'),
                ),
                SummaryCard(
                typeSummaryCard: TypeSummaryCard.spending, 
                amount: 7000000, 
                period: 'From January 1 to Januray 31',
                action: () =>  print('spending'),
                ),
          ],)
    );
  }
}