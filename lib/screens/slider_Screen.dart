import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders and Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),

          /*    Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ), */
          /*    Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }), */

          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }),

          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }),

          const AboutListTile(),

          //Sirve para expandir todo en su contenido
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    "https://static.wikia.nocookie.net/ben10/images/f/ff/Fuego_Pantanoso_FASA_%281%29.png/revision/latest?cb=20190831004347&path-prefix=es"),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
