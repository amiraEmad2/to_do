import 'package:flutter/material.dart';
import 'package:to_do/app_theme.dart';

class DefaultElevatBottom extends StatelessWidget {
  DefaultElevatBottom ({required this.label,required this.onPressed});
  String label;

  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
      fixedSize: Size(MediaQuery.of(context).size.width,50 )
      ),
      child: Text(label,style:Theme.of(context).textTheme.bodyMedium?.copyWith(
        color:AppTheme.white,

      )),
    );
  }
}

