import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Benim Uygulamam"),
        leading: Icon(Icons.close),
      ),
      floatingActionButton: fab(context),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return DetailPage();
                },
              ),
            );
          },
          child: Stack(
            children: [
              pinkWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Opacity(
                  opacity: 0.5,
                  child: greenWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget amberWidget({required Widget child}) {
    return Container(
      color: Colors.amber,
      height: 200,
      width: 300,
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget pinkWidget() {
    return Container(
      height: 190,
      width: 190,
      color: Colors.pink,
    );
  }

  Widget greenWidget() {
    return Container(
      height: 190,
      width: 190,
      color: Colors.green,
    );
  }

  Widget blueWidget({required Widget child}) {
    return Container(
      decoration: blueDecoration(),
      height: 150,
      width: 150,
      alignment: Alignment.center,
      child: child,
    );
  }

  BoxDecoration blueDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
    );
  }

  Widget fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AboutDialog();
            });
      },
      child: Icon(Icons.window),
    );
  }
}
