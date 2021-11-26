import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int count = 0;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() {}

  @override
  Widget build(BuildContext context) {
    print("build çalıştı");
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: fab(context),
      body: Center(
          child: TextButton(
              onPressed: () {
                print("Selamlar");
              },
              child: Text("Ben düğmeyim"))),
    );
  }

  FloatingActionButton fab(BuildContext context) {
    return FloatingActionButton(
      child: Text("+"),
      onPressed: () {
        setState(() {
          count = count + 1;
        });
        //getData();
      },
    );
  }
}
