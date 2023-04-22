import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui-controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, train }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;

  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        const _TitleView(title: 'SwitchListTile'),
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        
        const _TitleView(title: 'ExpansionTile (RadioListTile)'),
        ExpansionTile(
            title: const Text('Vehículo de Transporte'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar en coche'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.car;
                }),
              ),
              RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar en avión'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.plane;
                }),
              ),
              RadioListTile(
                title: const Text('By train'),
                subtitle: const Text('Viajar en tren'),
                value: Transportation.train,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.train;
                }),
              ),
              RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('Viajar en barco'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.boat;
                }),
              )
            ]),
        


        const _TitleView(title: 'RadioListTile'),
        RadioListTile(
          title: const Text('By car'),
          subtitle: const Text('Viajar en coche'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
        ),
        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Viajar en avión'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
        ),
        RadioListTile(
          title: const Text('By train'),
          subtitle: const Text('Viajar en tren'),
          value: Transportation.train,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.train;
          }),
        ),
        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Viajar en barco'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ),
      

        const _TitleView(title: 'CheckboxListTile'),
        CheckboxListTile(
          title: const Text('¿Incluir desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          })          
        ),
        CheckboxListTile(
          title: const Text('¿Incluir Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          })          
        ),
        CheckboxListTile(
          title: const Text('¿Incluir cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          })          
        )
      
      ],
    );
  }
}

class _TitleView extends StatelessWidget {
  final String title;

  const _TitleView({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colors.primary, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
