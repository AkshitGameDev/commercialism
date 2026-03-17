import 'package:commercialism/Widgets/small_Text.dart';
import 'package:commercialism/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool hiddenText = true;

  @override
  Widget build(BuildContext context) {
    final bool isLongText = widget.text.length > 150;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

        Text(
          widget.text,
          softWrap: true,
          overflow: hiddenText ? TextOverflow.ellipsis : TextOverflow.visible,
          maxLines: hiddenText ? 4 : null,
          style: TextStyle(
                    fontSize: Dimensions.font16,
          )
          
        ),
        if (isLongText)
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
                  size: Dimensions.font16,
                  
                ),
                Icon(
                  hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: Colors.blue,
                  size: Dimensions.font16,
                ),
              ],
            ),
          ),
      ],
    );
  }
}