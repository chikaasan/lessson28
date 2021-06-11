

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l28/bloc/animation_bloc.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AnimationBloc(),
        child: MaterialApp(
          home: MyMainPage(),
        ));
  }
}

class MyMainPage extends StatelessWidget {
  // double _height = 50;
  // double _width = 50;
  // Color _color = Colors.blue;
  // BorderRadiusGeometry _borderRadius = BorderRadius.circular(25);

  // _random() {
  //   setState(() {
  //     _width = Random().nextInt(300).toDouble();
  //     _height = Random().nextInt(300).toDouble();

  //     _color = Color.fromRGBO(
  //       Random().nextInt(256),
  //       Random().nextInt(256),
  //       Random().nextInt(256),
  //       1
  //       );

  //     _borderRadius = BorderRadius.circular(Random().nextInt(100).toDouble());
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyHomePage"),
      ),
      body: Center(
        child: BlocBuilder<AnimationBloc, AnimationState>(
          builder: (context, state) {
            return AnimatedContainer(
              height: state.height1,
              width: state.width1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                  state.color11,
                  state.color22,
                  state.color33,
                  1
                  ),
                borderRadius: state.borderRadius2,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<AnimationBloc>(context).add(ClickEvent());
        },
        child: Icon(Icons.play_circle_fill),
      ),
    );
  }
}
