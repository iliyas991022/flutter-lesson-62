import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lesson_30/widgets/movie_details/movie_details_main_info_widget.dart';
import 'package:flutter_lesson_30/widgets/movie_details/movie_details_main_screen_cast_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({super.key, required this.movieId});

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Черный адам')),
      body: ColoredBox(
          color: Color.fromRGBO(24, 23, 27, 1.0),
          child: ListView(children: [
            MovieDetailsMainInfoWidget(),
            SizedBox(
              height: 30,
            ),
            MovieDetailsMainScreenCastWIdget()
          ])),
    );
  }
}
