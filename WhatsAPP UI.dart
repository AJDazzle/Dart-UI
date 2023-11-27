import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text(
          "WhatsAPP UI BY DAZZLE",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://c.ndtvimg.com/2023-07/v06clarg_elon-muskteslaai_625x300_20_July_23.jpg'),
            ),
            title: Text("Person $index"),
            subtitle: Text("These are the details of person $index"),
            trailing: Text("1$index:00PM"),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: 50,
      )),
    );
  }
}
