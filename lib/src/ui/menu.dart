import 'package:flutter/material.dart';
import 'package:track/src/models/menu-item.model.dart';
import 'package:track/src/ui/todo.dart';
import 'package:track/src/widgets/menu-listview.dart';

final List<MenuItemModel> menuItems = [
  MenuItemModel(title: 'Movies', icon: Icon(Icons.movie), subtitle: 'See all the new movies in the theater.'),
  MenuItemModel(title: 'To Do', icon: Icon(Icons.check), subtitle: 'Your to do list', onTapRoute: TodoPage(), routeName: 'todo'),
];

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),

      ),
      body: Container(
        child: MenuListView(context, menuItems),
      ),
    );
  }
}