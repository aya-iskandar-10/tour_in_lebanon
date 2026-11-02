import 'package:flutter/material.dart';

import '../../core/widgets/place_card.dart';
import 'place_details_screen.dart';

class PlacesListScreen extends StatelessWidget {
  final String category;

  const PlacesListScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          PlaceCard(
            name: 'Our Lady of Lebanon',
            city: 'Harissa',
            description:
                'A famous Marian shrine overlooking the sea.',
            image: 'assets/images/harissa.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PlaceDetailsScreen(
                    name: 'Our Lady of Lebanon',
                    city: 'Harissa',
                    image: 'assets/images/harissa.jpg',
                    description:
                        'A famous Marian shrine in Lebanon.',
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 16),

          PlaceCard(
            name: 'Saint Charbel Monastery',
            city: 'Annaya',
            description:
                'A peaceful spiritual destination.',
            image: 'assets/images/charbel.jpg',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}