import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  List<String> _recentSearches = ["Jordan 1", "Air Max", "Yeezy", "Nike SB"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (val) {
                  setState(() {
                    _searchQuery = val;
                  });
                },
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search your sneakers...",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: Colors.grey),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _searchQuery = "";
                            });
                          },
                        )
                      : const Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Results or Recent Searches
            Expanded(
              child: _searchQuery.isEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Recent Searches",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: _recentSearches.map((search) {
                            return GestureDetector(
                              onTap: () {
                                _searchController.text = search;
                                setState(() {
                                  _searchQuery = search;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(search),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    )
                  : Consumer<Cart>(
                      builder: (context, value, child) {
                        List<Shoe> results = value
                            .getShoeList()
                            .where((shoe) => shoe.name
                                .toLowerCase()
                                .contains(_searchQuery.toLowerCase()))
                            .toList();

                        if (results.isEmpty) {
                          return const Center(
                            child: Text("No sneakers found."),
                          );
                        }

                        return ListView.builder(
                          itemCount: results.length,
                          itemBuilder: (context, index) {
                            Shoe shoe = results[index];
                            return ListTile(
                              leading: Image.asset(shoe.imagePath, width: 50),
                              title: Text(shoe.name),
                              subtitle: Text('\$${shoe.price}'),
                              trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                              onTap: () {
                                // Navigate to details
                              },
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
