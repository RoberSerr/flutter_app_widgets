import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(

  initialLocation: '/',
  
  routes: [

    // Home
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    // Buttons
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    // Cards
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    // Counter
    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) => const CounterScreen(),
    ),

    // Animated
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    // APP Tutorial
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    // Infinite Scroll
    GoRoute(
      path: '/infinite-scroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),

    // Progress
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    // Snackbar
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

    // Theme Changer
    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),

    // Ui Controls
    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),
  
  ],
  
);