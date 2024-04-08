import 'package:flutter/material.dart';
import 'package:pet_adobtation_nymble/Widgets/GridPet_view.dart';

import '../Data/data.dart';

class PetSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Filter the pets based on the search query
    final filteredPets = Pets.where((pet) {
      return pet.petNmae.contains(query);
    }).toList();

    return GridPet_Veiw(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      size: filteredPets.length,
      pets: filteredPets,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Display the pets that match the search query
    final suggestions = Pets.where((pet) {
      return pet.petNmae.contains(query);
    }).toList();

    return GridPet_Veiw(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      size: suggestions.length,
      pets: suggestions,
    );
  }
}