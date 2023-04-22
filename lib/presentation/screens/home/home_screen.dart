import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);

      },
      
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text( menuItem.title ),
      subtitle: Text( menuItem.subtitle ),
      leading: Icon( menuItem.icon, color: colors.primary ),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.secondary ),
      onTap: () => context.push( menuItem.route ),
    );
  }
}