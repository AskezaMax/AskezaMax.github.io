import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _siteBody(),
    );
  }

  void _openDialog() {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Good day to you!', style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 15,),
                  ElevatedButton(onPressed: () {Get.back();}, child: const Text('Bye!'))
                ],
              ),
            )
          ),
        ),
      )
    );
  }

  Widget _siteBody() {
    TextStyle tStyle22 =
        const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
    TextStyle tStyle18 = const TextStyle(fontSize: 18);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text('Hello friends!', style: tStyle22),
                Text('It\'s just a technical page!', style: tStyle18),
                Text(':-)', style: tStyle22),
              ],
            ),
          ),
          ElevatedButton(onPressed: _openDialog, child: const Text('Ok! ^^'))
        ],
      ),
    );
  }
}