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
      appBar: AppBar(title: const Text("Color Layout"), backgroundColor: Colors.blue, centerTitle: true), 
      backgroundColor: Colors.pink[40],
      body: Column(
        children: [
          SizedBox(height: 20,),
        Row(
        children: [
          SizedBox(width: 20,),
          Container(width: 100, height: 100, color: Colors.red,),
          SizedBox(width: 20,),
          Container(width: 100, height: 100, color: Colors.green,),
          SizedBox(width: 20,),
          Container(width: 100, height: 100, color: Colors.blue,),
        ],
      ),SizedBox(height: 20,),
      Row(children: [
        SizedBox(width: 20,),
          Expanded(flex: 1, child: Container(width: 100, height: 100, color: Colors.yellow,)),
          SizedBox(width: 20,),
          Expanded(flex: 2, child: Container(width: 100, height: 100, color: Colors.purple,)),
          SizedBox(width: 20,),
      ],)]
      )
      
    );
  }
}
