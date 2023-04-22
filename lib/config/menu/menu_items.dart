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

  // Animated
  MenuItem(
    title: 'Animated', 
    subtitle: 'Animaciones en Flutter', 
    route: '/animated', 
    icon: Icons.play_circle_outline_outlined
  ),

  // APP Tutorial
  MenuItem(
    title: 'APP Tutorial', 
    subtitle: 'Tutorial de la apliación', 
    route: '/tutorial', 
    icon: Icons.info_outline
  ),

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

  // Infinite scroll
  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subtitle: 'Listas infinitas y pull to refresh', 
    route: '/infinite-scroll', 
    icon: Icons.move_down_outlined
  ),

  // Progress
  MenuItem(
    title: 'Progress Indicators', 
    subtitle: 'Barras y controles de progreso', 
    route: '/progress', 
    icon: Icons.rocket_launch_sharp
  ),

  // Snackbar
  MenuItem(
    title: 'Snackbars y diálogos', 
    subtitle: 'Indicadores en pantalla', 
    route: '/snackbar', 
    icon: Icons.install_mobile_outlined
  ),

  // UI Controls
  MenuItem(
    title: 'UI Controls', 
    subtitle: 'Controles de la interfaz de usuario', 
    route: '/ui-controls', 
    icon: Icons.ads_click
  ),

];