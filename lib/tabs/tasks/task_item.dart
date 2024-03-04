import 'package:flutter/material.dart';

import '../../app_theme.dart';

class TaskItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(13),
decoration: BoxDecoration(color: AppTheme.white,borderRadius:BorderRadius.circular(15) ),
      child: Row(
        children: [
          Container(width: 4,height: 50,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsetsDirectional.only(end:8 ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Task Title',style: Theme.of(context).textTheme.bodyMedium,

          ),
SizedBox(height: 4,),
            Text('Task Description',style: Theme.of(context).textTheme.bodySmall,

              ),
          ],
          ),
        Spacer(),

        Container(child: Icon(
          Icons.check,
        ),
        decoration: BoxDecoration(color:Theme.of(context).primaryColor,
borderRadius: BorderRadius.circular(10)
        ),
          height: 34,
          width: 69,
        ),
        ],
      ),
    );
  }
}
