import 'package:add_task_page/pages/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // Calculate dynamic font size
    double fontSize = width * 0.03;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('name',style: TextStyle(fontSize: fontSize* 1.5, fontWeight: FontWeight.bold)),
            SizedBox(height: width * .02,),
            CustomRow(type: 'Status', value: 'New Task', container: false,),
            CustomRow(type: 'Type', value: 'Operational',container: true,),
            CustomRow(type: 'Date Time', container: false, dateTime: null,),
            CustomRow(type: 'Responsible', container: false, circleAvatarText: 's', value: ' Me ')
          ],
        ),
      ),
    );
  }
}
