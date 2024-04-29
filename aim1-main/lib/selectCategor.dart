import 'colors.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => SelectCategoryState();
}

class SelectCategoryState extends State<SelectCategory> {

  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
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
    margin: EdgeInsets.fromLTRB(4,30,4,30),
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: primaryColor),
    ),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: primaryColor,
          ),
          Text("$text", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
        ],
      ),
    ),
  );
}
