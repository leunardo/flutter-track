import 'package:flutter/material.dart';
import 'package:track/src/models/menu-item.model.dart';

class MenuListView extends ListView {
  MenuListView(BuildContext context, List<MenuItemModel> items): super(
    children: items.map(
      (item) => Card(
        child: ListTile(
          leading: item.icon,
          title: Text(item.title),
          subtitle: Text(item.subtitle),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                settings: RouteSettings(name: item.routeName),
                builder: (context) => item.onTapRoute),
              );
          },
        )
      )
    ).toList()
  );
}