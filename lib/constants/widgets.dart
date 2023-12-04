import 'package:flutter/material.dart';

Widget customIconButton(
    {required VoidCallback onpressed, required Icon icon, Color? iconColor}) {
  return IconButton(
    onPressed: onpressed,
    icon: icon,
    color: iconColor,
        
  );
}
