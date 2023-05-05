import 'package:flutter/material.dart';

class BottonFunc extends StatelessWidget {
  final Icon ico;
  final String title;
  final Function onPress;
  final bool isActive;
  const BottonFunc(
      {super.key,
      required this.ico,
      required this.title,
      required this.onPress,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          isActive
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                    height: 2,
                    width: 60,
                  ),
                )
              : SizedBox(),
          ico,
          Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
