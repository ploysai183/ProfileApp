import 'package:flutter/material.dart';
import 'package:myapp/drawer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 27, 173, 218)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Phiyada Yimchungnang'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/Profile.jpg"),
            const Text(
              '',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            // แนวนอน
            Row(
              // ใส่ของ
              children: [
                SizedBox(width: 20,),
                ClipOval(
                  child: Image.asset(
                    "images/Facebook.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20,),
                 Text("Phiyada"),
              ],
            ),
            SizedBox(height: 20,),
             Row(
              // ใส่ของ
              children: [
                SizedBox(width: 20,),
                ClipOval(
                  child: Image.asset(
                    "images/LINE.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20,),
                Text("PL OY"),
              ],
            ),
             SizedBox(height: 20,),
             Row(
              // ใส่ของ
              children: [
                SizedBox(width: 20,),
                ClipOval(
                  child: Image.asset(
                    "images/phone.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20,),
                Text("0616584776"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
