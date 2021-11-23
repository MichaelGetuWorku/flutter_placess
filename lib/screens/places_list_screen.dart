import 'package:flutter/material.dart';
import 'package:placess/providers/great_places.dart';
import 'package:placess/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(
          context,
          listen: false,
        ).featchAndSetPlaces(),
        builder: (ctx, snaphot) =>
            snaphot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<GreatPlaces>(
                    child: const Center(
                      child: Text('Got no places yet, start adding some!'),
                    ),
                    builder: (ctx, greatPlaces, ch) => Container(
                      child: greatPlaces.items.isEmpty
                          ? ch
                          : ListView.builder(
                              itemCount: greatPlaces.items.length,
                              itemBuilder: (ctx, i) => ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: FileImage(
                                    greatPlaces.items[i].image,
                                  ),
                                ),
                                title: Text(greatPlaces.items[i].title),
                                onTap: () {
                                  // Go to detail page ...
                                },
                              ),
                            ),
                    ),
                  ),
      ),
    );
  }
}
