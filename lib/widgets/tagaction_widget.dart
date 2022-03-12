import 'package:flutter/material.dart';
import 'package:fyt_trying/models/tagsCategory.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tagForAction(String label, bool selection) {
  int i;
  bool _selection = selection;
  for (i = 0; i < tagsListForActions.length; i++) {
    _selection = tagsListForActions[i].seletion;
  }

  return Chip(
    label: Text(
      label,
      style: GoogleFonts.montserrat(
        color: _selection ? Colors.grey : Colors.white,
      ),
    ),
    shape: StadiumBorder(
        side: BorderSide(
      color: _selection ? Colors.grey : const Color(0xff149cff),
      width: 0.5,
    )),
    backgroundColor: _selection ? Colors.white : const Color(0xff149cff),
    // padding: EdgeInsets.all(6.0),
  );
}
