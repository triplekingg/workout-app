import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  TextEditingController searchFieldController;

  SearchBar(this.searchFieldController);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
      child: TextFormField(
        controller: searchFieldController,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'Type to search here...',
          hintStyle: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF95A1AC),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF1F4F8),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF1F4F8),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Color(0xFF95A1AC),
          ),
        ),
        style: TextStyle(
          fontFamily: 'Lexend Deca',
          color: Color(0xFF090F13),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
