import 'package:flutter/material.dart';

class StorisWidget extends StatelessWidget {
  final List<Map<String, String>> images = [
    {
      'image': 'assets/image/cat.jpg',
      'name': 'Snowy',
    },
    {
      'image': 'assets/image/dog.jpg',
      'name': 'Sandy',
    }
  ];
  StorisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      //color: Colors.blueAccent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          final image = images[index];
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(image['image']!), // Use index here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                image['name']!,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          );
        },
      ),
    );
  }
}
