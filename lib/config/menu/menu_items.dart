import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subtitle;
  final String route;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.route,
    required this.icon
  });

}

const appMenuItems = <MenuItem> [

  // Buttons
  MenuItem(
    title: 'Buttons', 
    subtitle: 'Diferentes botones en Flutter', 
    route: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  // Cards
  MenuItem(
    title: 'Cards', 
    subtitle: 'Contenedores en Flutter', 
    route: '/cards', 
    icon: Icons.credit_card_rounded
  ),

];