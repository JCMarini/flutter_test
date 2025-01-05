import 'package:flutter/material.dart';
import 'package:test_app/desing/colors.dart';
import 'package:test_app/desing/radius.dart';
import 'package:test_app/widgets/home_bar_tittle.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 97,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: RadiusApp.small, bottomRight: RadiusApp.small)),
          backgroundColor: AppColors.brandLigthColor,
          title: Padding(
              padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
              child: HomeBarTitle())),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          'Estamos aprendiendo flutter',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 34),
        )),
      ),
      backgroundColor: AppColors.brandPrimaryColor,
    );
  }
}
