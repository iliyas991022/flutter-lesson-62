import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lesson_30/theme/app_images.dart';
import 'package:flutter_lesson_30/widgets/elements/radial_percent_widget.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
        Padding(padding: EdgeInsets.all(20), child: _MovieNameWidget()),
        _ScoreWidget(),
        _SummuryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OvervierwWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWIdget(),
        ),
        SizedBox(
          height: 30,
        ),
        _PeopleWidget()
      ],
    );
  }
}

class _DescriptionWIdget extends StatelessWidget {
  const _DescriptionWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Спустя почти 5 000 лет после того, как он был наделен всемогущими силами египетских богов и так же быстро заключен в тюрьму, Черный Адам освобождается из своей земной гробницы и готов обрушить свою уникальную форму правосудия на современный мир.',
      style: TextStyle(color: Colors.white),
    );
  }
}

class _OvervierwWidget extends StatelessWidget {
  const _OvervierwWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Обзор',
      style: TextStyle(color: Colors.white),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(AppImages.movie_poster)),
        Positioned(
            top: 20,
            left: 20,
            bottom: 20,
            child: Image(image: AssetImage(AppImages.movie_placeholder)))
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'Black Adam',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        TextSpan(
            text: ' (2021)',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400))
      ]),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: RadialPercentWidget(
                    child: Text('72'),
                    percent: 0.72,
                    fillColor: Color.fromRGBO(24, 23, 27, 1.0),
                    lineColor: Colors.red,
                    freeColor: Colors.yellow,
                    lineWidth: 3,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('User Score'),
              ],
            )),
        Container(
          height: 15,
          width: 1,
          color: Colors.grey,
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.play_arrow),
                Text('Play Trailer'),
              ],
            ))
      ],
    );
  }
}

class _SummuryWidget extends StatelessWidget {
  const _SummuryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        child: Text('PG-13 21/10/2022 (US) боевик, фэнтези, фантастика 2h 5m',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}

class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    final jobTitleStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Казбек Биев', style: nameStyle),
                Text(
                  'Казбек Биев',
                  style: jobTitleStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Казбек Биев', style: nameStyle),
                Text(
                  'Казбек Биев',
                  style: jobTitleStyle,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Казбек Биев', style: nameStyle),
                Text(
                  'Казбек Биев',
                  style: jobTitleStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Казбек Биев', style: nameStyle),
                Text(
                  'Казбек Биев',
                  style: jobTitleStyle,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
