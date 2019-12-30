import 'package:flutter/material.dart';

class MenuItemModel {
  String title;
  Icon icon;
  String subtitle;
  Widget onTapRoute;
  String routeName;

  MenuItemModel({this.title, this.icon, this.subtitle, this.onTapRoute, this.routeName});
}
