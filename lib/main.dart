import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
//สร้าง -------

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

int number = 0; //การสร้าง state

@override
class _MyHomepageState extends State<MyHomepage> {
  Widget build(BuildContext context) {
    //กลุ่มข้อมูล text wiget
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("รายการ${i + 1}"));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("โปรแกรมนับตัวเลข"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addnumber,
        child: Text("เพิ่ม"),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
