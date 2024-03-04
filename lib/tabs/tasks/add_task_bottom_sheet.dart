import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:to_do/tabs/tasks/default_elevated_bootom.dart';
import 'package:to_do/tabs/tasks/default_taxt_formfield.dart';

class AddTask extends StatefulWidget {

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
final titleContrller =TextEditingController();
final descriptionContrller =TextEditingController();

  late final selectedData;
@override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.width*0.85,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Text('Add New Task',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:Colors.black),),
DefaultTextFormField(
    controller:titleContrller,
    hintText: 'Enter Task Title'),
 SizedBox(height: 12,),
  DefaultTextFormField(
      controller:descriptionContrller ,
      hintText: 'Enter Task Description'),
 Align(
  alignment: AlignmentDirectional.centerStart,
    child: Text('Selected Date',style:Theme.of(context).textTheme.bodyLarge ,)),
        InkWell(
          onTap: ()async{

            selectedData=  await showDatePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)),
            initialDate: DateTime.now(),
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            );
          },
          child: Text(
            DateTime.now().toString().substring(0,10),
            style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
          ),
        ),

      DefaultElevatBottom(label: "Add",onPressed:addTask,
      ),
  ],),
    );
  }

void addTask(){}
}
