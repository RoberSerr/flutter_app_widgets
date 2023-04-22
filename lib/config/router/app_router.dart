import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(

  initialLocation: '/',
  
  routes: [

    // Home
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    // Buttons
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),

    // Cards
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  
  ],
  
);