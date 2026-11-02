import 'package:flutter/material.dart';

import '../../core/widgets/category_card.dart';
import '../../core/widgets/place_card.dart';
import '../../core/widgets/section_title.dart';
import '../places/places_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text('Discover Lebanon 🇱🇧'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SectionTitle(
              title: 'Categories',
            ),

            CategoryCard(
              title: 'Religious Shrines',
              icon: Icons.mosque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PlacesListScreen(
                      category: 'Religious Shrines',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            CategoryCard(
              title: 'Tourist Attractions',
              icon: Icons.landscape,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PlacesListScreen(
                      category: 'Tourist Attractions',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 24),

            const SectionTitle(
              title: 'Popular Places',
            ),

            PlaceCard(
              name: 'Jeita Grotto',
              city: 'Keserwan',
              description: 'A beautiful cave system in Lebanon.',
              image: 'assets/images/jeita.jpg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}