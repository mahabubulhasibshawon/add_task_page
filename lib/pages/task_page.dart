import 'package:add_task_page/pages/widgets/btn_widget.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    // responsive height and width
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // Calculate dynamic font size
    double fontSize = width * 0.03;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mirza Task',
              style: TextStyle(
                  fontSize: fontSize * 1.5, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              children: [
                Expanded(
                    child: Text('Status',
                        style:
                            TextStyle(fontSize: fontSize, color: Colors.grey))),
                Expanded(
                  flex: 2,
                  child: Text('New Task', style: TextStyle(fontSize: fontSize)),
                ),
              ],
            ),
            SizedBox(
              height: height * .015,
            ),
            Row(
              children: [
                Expanded(
                    child: Text('Type',
                        style:
                            TextStyle(fontSize: fontSize, color: Colors.grey))),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width * .02),
                        height: height * .03,
                        width: height * .03,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade100,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Text('Operatiional', style: TextStyle(fontSize: fontSize))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .015,
            ),
            Row(
              children: [
                Expanded(
                    child: Text('Due Date',
                        style:
                            TextStyle(fontSize: fontSize, color: Colors.grey))),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width * .02),
                        height: height * .025,
                        width: height * .025,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/icons/calendar.png',color: Colors.grey.shade500,),
                      ),
                      Text('No due date',
                          style:
                              TextStyle(fontSize: fontSize, color: Colors.grey))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .015,
            ),
            Row(
              children: [
                Expanded(
                    child: Text('Responsible',
                        style:
                            TextStyle(fontSize: fontSize, color: Colors.grey))),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width * .02),
                        height: height * .035,
                        width: height * .035,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text('s',
                              style: TextStyle(
                                  fontSize: fontSize, color: Colors.white)),
                        ),
                      ),
                      Text('Me', style: TextStyle(fontSize: fontSize))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BtnWidget(
                      image: 'assets/icons/double-tick.png',
                      text: 'Add subtask'),
                  BtnWidget(
                      image: 'assets/icons/attachment.png',
                      text: 'Attach file'),
                  BtnWidget(image: 'assets/icons/ribbon.png', text: 'Add tag'),
                  BtnWidget(
                      image: 'assets/icons/repeat-button.png',
                      text: 'Repeat task'),
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            Divider(),
            SizedBox(
              height: height * .03,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .025,
                  width: height * .025,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset('assets/icons/text.png',color: Colors.grey.shade500,),
                ),
                Text('Description',
                    style:
                        TextStyle(fontSize: fontSize * 1.1, color: Colors.grey))
              ],
            ),
            TextField(
              maxLines: 3,
            ),
            SizedBox(
              height: height * .015,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .025,
                  width: height * .025,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset('assets/icons/clock.png',color: Colors.grey.shade500,),
                ),
                Text('Time blocks',
                    style: TextStyle(fontSize: fontSize, color: Colors.grey)),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .035,
                  width: height * .035,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                            fontSize: fontSize, color: Colors.grey.shade500)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * .015,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .015,
                  width: height * .015,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Text(
                  'Spent time: 0h',
                  style: TextStyle(fontSize: fontSize, color: Colors.grey),
                ),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .015,
                  width: height * .015,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Text('Spent time: 0h',
                    style: TextStyle(fontSize: fontSize, color: Colors.grey))
              ],
            ),
            SizedBox(
              height: height * .015,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: width * .01),
                    padding: EdgeInsets.symmetric(horizontal: height * .02),
                    height: height * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.green,
                        ),
                        Text(
                          '23 Dec 2024',
                          style: TextStyle(
                              fontSize: fontSize * 1.5,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: width * .01),
                    padding: EdgeInsets.symmetric(horizontal: height * .02),
                    height: height * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'planned 0h',
                      style: TextStyle(
                          fontSize: fontSize, color: Colors.grey.shade500),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: width * .01),
                    padding: EdgeInsets.symmetric(horizontal: height * .02),
                    height: height * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      children: [
                        Text(
                          'spent ',
                          style: TextStyle(
                              fontSize: fontSize, color: Colors.grey.shade500),
                        ),
                        Text(
                          'Start',
                          style: TextStyle(
                              fontSize: fontSize, fontWeight: FontWeight.w700, color: Colors.blue),
                        ),
                        Icon(Icons.alarm, color: Colors.blue,)
                      ],
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * .02),
                  height: height * .025,
                  width: height * .025,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset('assets/icons/plus.png',color: Colors.grey.shade500,),
                ),
                Text('Add time block',
                    style:
                    TextStyle(fontSize: fontSize * 1.1, color: Colors.grey))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
