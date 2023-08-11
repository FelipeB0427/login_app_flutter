import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart_outlined), onPressed: () {},),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading"),
            const Text("Sub-heading"),
            const Text("Paragraph"),
            ElevatedButton(onPressed: () {}, child: const Text("Elevated Button"),),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined Button"),),
            const Padding(padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/iamges/books.png")),
            )
          ],
        ),
      )
    );
  }
}