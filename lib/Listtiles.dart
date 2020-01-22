import 'package:flutter/material.dart';

Widget tilees(Widget tile_icon,Widget ttext) {
  return InkWell(
    onTap: (){
    },
    child: ListTile(
      leading: tile_icon,
      title: ttext,
    )

  );

}
