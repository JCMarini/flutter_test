import 'package:flutter/material.dart';
import 'package:test_app/desing/colors.dart';

class HomeBarTitle extends StatelessWidget {
  const HomeBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.png')),
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        Expanded(
          child: Text('Store APP',
              style: Theme.of(context).textTheme.headlineLarge),
        ),
        ContainerIcon(
            configMargin: const EdgeInsets.only(right: 12),
            iconButon: IconButton(
                onPressed: () => print('press notification'),
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.brandPrimaryColor,
                ))),
        ContainerIcon(
            iconButon: IconButton(
                onPressed: () => print('press more'),
                icon: Icon(
                  Icons.more_vert,
                  color: AppColors.brandPrimaryColor,
                )))
      ],
    );
  }
}

class ContainerIcon extends StatelessWidget {
  final EdgeInsets? configMargin;
  final IconButton iconButon;

  const ContainerIcon({super.key, required this.iconButon, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.brandLigthColorBorder),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: iconButon,
    );
  }
}
