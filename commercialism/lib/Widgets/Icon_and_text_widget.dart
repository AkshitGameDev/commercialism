import 'package:commercialism/Widgets/small_Text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? key, required this.icon, required this.text, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 15),
          const SizedBox(width: 5),
          SmallText(text: text),
        ],
      ),
    );
  }

}