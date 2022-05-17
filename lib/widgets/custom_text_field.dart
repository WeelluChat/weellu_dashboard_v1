import 'package:dashboard_v1/constants/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  const CustomTextField({Key key, this.title, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("  $title"),
          const SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: lightGrey),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
            ),
            cursorColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
