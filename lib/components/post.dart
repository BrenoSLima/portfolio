import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post(
      {Key? key,
      required this.image_path,
      required this.title,
      required this.text,
      required this.link,
      required this.tools})
      : super(key: key);

  final String image_path;
  final String title;
  final String text;
  final String link;
  final List<String> tools;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black45, blurRadius: 50, spreadRadius: 7)
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35.0),
          child: Column(
            children: [
              Image.asset(image_path, scale: 1.6),
              Container(
                width: 800,
                color: const Color(0xcc111115),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 15),
                      Text(text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.normal)),
                      const SizedBox(height: 25),
                      Text(
                        link,
                        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(height: 15),
                      // list
                      Wrap(
                        spacing: 6,
                        runSpacing: 9,
                        children: [
                          for (var tool in tools)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                color: Color(0xff25252C),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                  child: Text(
                                    tool,
                                    style: const TextStyle(
                                      color: Color(0xebFFFFFF),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
