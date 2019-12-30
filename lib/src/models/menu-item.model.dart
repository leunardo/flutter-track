import 'package:flutter/material.dart';

class MenuItemModel {
  String title;
  Icon icon;
  String subtitle;
  Widget onTapRoute;

  MenuItemModel({this.title, this.icon, this.subtitle, this.onTapRoute});
}
