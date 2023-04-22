import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones en Flutter'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => context.pop()
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Wrap(
        runSpacing: 20,
        children: [
      
          // Elevated button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Elevated Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Button')),
                    const ElevatedButton(onPressed: null, child: Text('disabled')),
                    ElevatedButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.alarm_add_outlined), 
                      label: const Text('Icon')
                    )
                  ],
                )
              ],
            ),
          ),

          // Filled button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Filled Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    FilledButton(onPressed: () {}, child: const Text('Button')),
                    const FilledButton(onPressed: null, child: Text('disabled')),
                    FilledButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.alarm_add_outlined), 
                      label: const Text('Icon')
                    )
                  ],
                )
              ],
            ),
          ),

          // Outlined button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Outlined Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    OutlinedButton(onPressed: () {}, child: const Text('Button')),
                    const OutlinedButton(onPressed: null, child: Text('disabled')),
                    OutlinedButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.alarm_add_outlined), 
                      label: const Text('Icon'),
                    )
                  ],
                )
              ],
            ),
          ),

          // Text button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Text Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('Button')),
                    const TextButton(onPressed: null, child: Text('disabled')),
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.alarm_add_outlined), 
                      label: const Text('Icon')
                    )
                  ],
                )
              ],
            ),
          ),

          // Icon button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Icon Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.alarm_add_outlined),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(colors.primary),
                        iconColor: const MaterialStatePropertyAll(Colors.white)
                        ),
                    ),
                    const IconButton(onPressed: null, icon: Icon(Icons.alarm_add_outlined))
                  ],
                )
              ],
            ),
          ),

          // Custom button
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text('Custom Button', style: TextStyle(
                  color: colors.primary, 
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        color: colors.primary,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
                            child: 
                              Text('Custom buttom', style: TextStyle(color: Colors.white),)
                            ,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      
        ],
      
      ),

    );
  }
}