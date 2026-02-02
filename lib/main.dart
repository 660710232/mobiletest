import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tenergyz Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.red),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // Render Screen

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tenergyz"), backgroundColor: Colors.blue, centerTitle: true), 
      backgroundColor: Colors.pink[40],
      body: Center(child: Container(height: 250, width: 250, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(30)), child: Center(child: Text("Hello, Pongsatorn Phantawong 660710232", textAlign: TextAlign.center, style: TextStyle(fontSize: 24))))
      ),
    );
  }
}
