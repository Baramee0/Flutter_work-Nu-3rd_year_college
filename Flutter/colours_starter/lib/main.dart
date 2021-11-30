import 'package:flutter/material.dart';

void main() => runApp(const ColorApp());

class ColorApp extends StatelessWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == ColorSwatchWidget.routeName) {
          final args = settings.arguments as ColorSwatchArguments;
          return MaterialPageRoute(
            builder: (context) {
              return ColorSwatchWidget(
                colorSwatch: args.swatch,
              );
            },
          );
        }
        if (settings.name == ColorWidget.routeName) {
          final args = settings.arguments as ColorArguments;
          return MaterialPageRoute(
            builder: (context) {
              return ColorWidget(
                exactColor: args.shade,
              );
            },
          );
        }
        return null;
      },
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Pair<String, MaterialColor>> swatches = [
      Pair('Red', Colors.red),
      Pair('Pink', Colors.pink),
      Pair('Purple', Colors.purple),
      Pair('Deep Purple', Colors.deepPurple),
      Pair('Indigo', Colors.indigo),
      Pair('Blue', Colors.blue),
      Pair('Light Blue', Colors.lightBlue),
      Pair('Cyan', Colors.cyan),
      Pair('Teal', Colors.teal),
      Pair('Green', Colors.green),
      Pair('Light Green', Colors.lightGreen),
      Pair('Lime', Colors.lime)
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color Swatches'),
        ),
        body: ListView.builder(
            itemCount: swatches.length,
            itemBuilder: (context, index) {
              final colorName = swatches[index].a;
              final swatch = swatches[index].b;
              return ListTile(
                title: Text(colorName),
                tileColor: swatch,
                onTap: () {
                  Navigator.pushNamed(context, ColorSwatchWidget.routeName,
                      arguments: ColorSwatchArguments(swatch));
                },
              );
            }));
  }
}

class ColorSwatchWidget extends StatelessWidget {
  static const routeName = '/color';

  final MaterialColor colorSwatch;

  const ColorSwatchWidget({
    Key? key,
    required this.colorSwatch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
      colorSwatch.shade50,
      colorSwatch.shade100,
      colorSwatch.shade200,
      colorSwatch.shade300,
      colorSwatch.shade400,
      colorSwatch.shade500,
      colorSwatch.shade600,
      colorSwatch.shade700,
      colorSwatch.shade800,
      colorSwatch.shade900
    ];
    final shader = [
      'Shade 50',
      'Shade 100',
      'Shade 200',
      'Shade 300',
      'Shade 400',
      'Shade 500',
      'Shade 600',
      'Shade 700',
      'Shade 800',
      'Shade 900'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final shadeName = shader[index];
              final shade = colors[index];
              return ListTile(
                title: Text(shadeName),
                tileColor: shade,
                onTap: () {
                  Navigator.pushNamed(context, ColorWidget.routeName,
                      arguments: ColorArguments(shade));
                },
              );
            }));
  }
}

class ColorWidget extends StatelessWidget {
  static const routeName = '/rgb';

  final Color exactColor;

  const ColorWidget({
    Key? key,
    required this.exactColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Color'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Red: ' + exactColor.red.toString()),
                Text('Green: ' + exactColor.green.toString()),
                Text('Blue: ' + exactColor.blue.toString())
              ]),
        ),
        backgroundColor: exactColor);
  }
}

class ColorSwatchArguments {
  final MaterialColor swatch;

  ColorSwatchArguments(this.swatch);
}

class ColorArguments {
  final Color shade;

  ColorArguments(this.shade);
}

class Pair<T1, T2> {
  final T1 a;
  final T2 b;

  Pair(this.a, this.b);
}
