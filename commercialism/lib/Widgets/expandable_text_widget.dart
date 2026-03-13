import 'package:commercialism/Utils/dimensions.dart';
import 'package:commercialism/Widgets/small_Text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  final double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > textHeight.toInt()) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt());
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SmallText(
          text: secondHalf.isEmpty
              ? firstHalf
              : (hiddenText ? "$firstHalf..." : firstHalf + secondHalf),
        ),
        if (secondHalf.isNotEmpty)
          InkWell(
            onTap: () {
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmallText(
                  text: hiddenText ? "Show more" : "Show less",
                  color: Colors.blue,
                ),
                Icon(
                  hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
      ],
    );
  }
}