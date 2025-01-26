import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  final String type;
  String? value; // Alternative text for the row
  DateTime? dateTime;
  final bool container;
  final String? circleAvatarText;

  CustomRow({
    super.key,
    required this.type,
    this.value,
    this.dateTime,
    required this.container,
    this.circleAvatarText,
  });

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  late String displayedText;

  @override
  void initState() {
    super.initState();
    // Set the initial text to "No Due Date" or provided value
    displayedText = widget.dateTime != null
        ? _formatDate(widget.dateTime!)
        : (widget.value ?? "No Due Date");
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.dateTime ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        widget.dateTime = picked;
        displayedText = _formatDate(picked); // Update text to the selected date
      });
    }
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.only(bottom: width * .02),
      child: Row(
        children: [
          // Row title
          Expanded(
            child: Text(
              widget.type,
              style: TextStyle(fontSize: 16),
            ),
          ),
          // Row content
          Expanded(
            flex: 2,
            child: Row(
              children: [
                // Display Container if true
                if (widget.container)
                  Container(
                    margin: EdgeInsets.only(right: width * .02),
                    height: height * .03,
                    width: height * .03,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                // Display CircleAvatar if text is provided
                else if (widget.circleAvatarText != null)
                  CircleAvatar(
                    radius: height * .015,
                    backgroundColor: Colors.blueAccent.shade100,
                    child: Text(
                      widget.circleAvatarText!,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                // Display Calendar Icon and Date/Value Text
                else if(_selectDate != null)
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: width * .02),
                          height: height * .03,
                          width: height * .03,
                          child: Image.asset('assets/icons/calendar.png'),
                        ),
                        Text(
                          displayedText, // Show date or value
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
