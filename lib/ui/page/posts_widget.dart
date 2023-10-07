import 'package:flutter/material.dart';

class PostsWiget extends StatelessWidget {
  final List<Map<String, String>> images = [
    {
      'image': 'assets/image/cat.jpg',
      'name': 'Snowy',
    },
    {
      'image': 'assets/image/dog.jpg',
      'name': 'Sandy',
    },
  ];

  PostsWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          final image = images[index];
          return Image.asset(
            image['image']!,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fitHeight,
          );
        },
      ),
    );
  }
}
