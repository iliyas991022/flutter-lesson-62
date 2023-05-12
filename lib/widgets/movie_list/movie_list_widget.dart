import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lesson_30/theme/app_images.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.id,
      required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        id: 1,
        imageName: AppImages.movie_placeholder,
        title: 'Черный Адам',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 4,
        imageName: AppImages.movie_placeholder,
        title: 'Угырь',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 5,
        imageName: AppImages.movie_placeholder,
        title: 'Негр',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 6,
        imageName: AppImages.movie_placeholder,
        title: 'ЧДюна',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 7,
        imageName: AppImages.movie_placeholder,
        title: 'Черный Адам',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 8,
        imageName: AppImages.movie_placeholder,
        title: 'Черный Адам',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.'),
    Movie(
        id: 9,
        imageName: AppImages.movie_placeholder,
        title: 'Igar',
        time: '19 октября 2022',
        description:
            'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.')
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      '/main_screen/movie_details',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: BouncingScrollPhysics(),
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          )
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(movie.imageName),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  movie.time,
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _onMovieTap(index)),
                )
              ]),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Поиск',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
