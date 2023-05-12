import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lesson_30/theme/app_images.dart';

class MovieDetailsMainScreenCastWIdget extends StatelessWidget {
  const MovieDetailsMainScreenCastWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Актерский состав',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
              height: 300,
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: 20,
                    itemExtent: 120,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: Offset(0, 2)),
                              ]),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(AppImages.actor),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Name',
                                      maxLines: 1,
                                    ),
                                    Text('Real Name', maxLines: 4),
                                    Text('Episodes', maxLines: 1)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child:
                TextButton(onPressed: () {}, child: Text('Full Cast & Crew')),
          )
        ],
      ),
    );
  }
}
