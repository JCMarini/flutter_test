import 'package:flutter/material.dart';
import 'package:test_app/desing/colors.dart';
import 'package:test_app/widgets/custom_money_display.dart';

enum TypeProductDetailCard { incomes, outcomes }

class ProductDetailCard extends StatelessWidget {
  final String pathToProductImage;
  final double amount;
  final String productName;
  final String currentSells;
  final String percentage;
  final TypeProductDetailCard typeProductDetailCard;

  const ProductDetailCard(
      {super.key,
      required this.pathToProductImage,
      required this.amount,
      required this.productName,
      required this.currentSells,
      required this.percentage,
      required this.typeProductDetailCard});

  @override
  Widget build(BuildContext context) {
    var iconIncomes = const Icon(
      Icons.expand_less,
      size: 20,
      color: AppColors.brandOnSuccessColor,
    );
    var iconSpending = const Icon(
      Icons.expand_more,
      size: 20,
      color: AppColors.brandOnErrorColor,
    );
    var currentBgPercentageColor = AppColors.brandSuccessColor;
    var currentTextPercentageColor = AppColors.brandOnSuccessColor;
    var currentIcon = iconIncomes;
    if (typeProductDetailCard == TypeProductDetailCard.outcomes) {
      currentBgPercentageColor = AppColors.brandErrorColor;
      currentTextPercentageColor = AppColors.brandOnErrorColor;
      currentIcon = iconSpending;
    }
    return Container(
      margin: const EdgeInsets.only(
        top: 14,
      ),
      height: 111,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.brandLigthColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 79,
            width: 56,
            decoration: const BoxDecoration(
              color: AppColors.brandSecondColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(pathToProductImage))),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: AppColors.brandDarkColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'RobotoMono',
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      '+ \$ $currentSells Today',
                      style: const TextStyle(
                          color: AppColors.brandLigthDarkColor,
                          fontFamily: 'RobotoMono',
                          fontSize: 10),
                    ),
                  ),
                  CustomMoneyDisplay(
                    padding: const EdgeInsets.only(top: 4, right: 2),
                    amount: amount,
                    amountStyle: const TextStyle(
                        color: AppColors.brandPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    amountStyleSmall: const TextStyle(
                        color: AppColors.brandPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 70,
              right: 16,
            ),
            height: 19,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(19)),
                color: currentBgPercentageColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                currentIcon,
                Text(
                  '$percentage %',
                  style: TextStyle(
                      fontSize: 10, color: currentTextPercentageColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
