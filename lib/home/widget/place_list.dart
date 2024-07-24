import 'package:flutter/material.dart';

class Place {
  String imagePath;
  String title;
  String rating;

  Place({
    required this.imagePath,
    required this.rating,
    required this.title,
  });
}

class PlaceList extends StatelessWidget {
  final List<Place> places;

  const PlaceList({
    super.key,
    required this.places,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 320.0),
      child: ListView.separated(
        padding: const EdgeInsets.all(12.0),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => _buildPlaceCard(
          title: places[index].title,
          imagePath: places[index].imagePath,
          rating: places[index].rating,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemCount: places.length,
      ),
    );
  }

  Widget _buildPlaceCard({
    required String imagePath,
    required String title,
    required String rating,
  }) {
    return Container(
      height: 320.0,
      margin: const EdgeInsets.only(right: 12.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imagePath,
              width: 212.0,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: Container(
              height: 32.0,
              width: 32.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: const Icon(Icons.favorite, color: Colors.redAccent),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 12.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      rating,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
