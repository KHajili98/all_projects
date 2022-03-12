import 'package:flutter/material.dart';

class TagsCategory {
  String title;
  bool seletion;

  TagsCategory({@required this.title, @required this.seletion});
}

var tagsListForProjects = [
  TagsCategory(title: "tələbə", seletion: false),
  TagsCategory(title: "şagird", seletion: true),
  TagsCategory(title: "iş", seletion: true),
  TagsCategory(title: "yenibiznes", seletion: true),
  TagsCategory(title: "iş", seletion: true),
  TagsCategory(title: "yenibiznes", seletion: true),
  TagsCategory(title: "şagird", seletion: true),
];

var tagsListForActions = [
  TagsCategory(title: "Seçilmişlər", seletion: true),
  TagsCategory(title: "müraciətlərim", seletion: false),
  TagsCategory(title: "Layihələrim", seletion: false),
  TagsCategory(title: "Layihələrim", seletion: false),
  TagsCategory(title: "Layihələrim", seletion: false),
];
