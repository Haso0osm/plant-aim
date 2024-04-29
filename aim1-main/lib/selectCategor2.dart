import 'colors.dart';
import 'package:flutter/material.dart';

class SelectCategor2 extends StatefulWidget {
  const SelectCategor2({super.key});

  @override
  State<SelectCategor2> createState() => SelectCategor2State();
}

class SelectCategor2State extends State<SelectCategor2> {
  Color buttonColor = const Color.fromARGB(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Wrap(
        children: [
          categoryButton(Icons.all_inclusive_outlined, "All"),
          categoryButton(Icons.computer_outlined, "Technology"),
          categoryButton(Icons.sports_martial_arts_outlined, "Sport"),
          categoryButton(Icons.article_outlined, "Writing"),
          categoryButton(Icons.book_outlined, "Reading"),
          categoryButton(Icons.school_outlined, "Studying"),
          categoryButton(Icons.draw_outlined, "Art"),
          categoryButton(Icons.circle_outlined, "Other"),
        ],
      ),
    );
  }
}

////////
//button, two param -icon -text
////////
Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
    width: 140,
    height: 40,
    decoration: BoxDecoration(
      color: const Color.fromARGB(0, 0, 0, 0),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: primaryColor),
    ),
    child: InkWell(
      onTap: () {
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: primaryColor,
          ),
          Text(
            "$text",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}
