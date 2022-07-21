import 'package:flutter/material.dart';
import '../../constant.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
          prefixIcon:
              const Icon(Icons.search, color: Constant.PRIMARY_LIGHT_BLACK),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          hintText: "Search",
          hintStyle: const TextStyle(
            fontSize: 16,
          ),
          filled: true,
          fillColor: Constant.FILLCOLOR,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
          // ),
        ),
        onChanged: (text) {
          text = text.toLowerCase();
          print(text);
        },
      ),
    );
  }
}
