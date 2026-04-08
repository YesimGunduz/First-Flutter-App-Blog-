import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/footer.global.dart';
import 'package:blogcat/view/widgets/header.global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = "All";

  final List<Map<String, String>> posts = [
    {
      "title": "David's Jungle Adventure",
      "subtitle": "Kedilerle macera dolu bir yolculuk",
      "category": "Adventure",
    },
    {
      "title": "Learning with David",
      "subtitle": "Eğitici ve eğlenceli içerikler",
      "category": "Education",
    },
    {
      "title": "Funny Cat Moments",
      "subtitle": "Gülmek serbest!",
      "category": "Fun",
    },
    {
      "title": "Tips for Cat Lovers",
      "subtitle": "Kedilerle yaşam tüyoları",
      "category": "Tips",
    },
    {
      "title": "Heartwarming Stories",
      "subtitle": "David’in tatlı hikayeleri",
      "category": "Story",
    },
    {
      "title": "David’s Photo Gallery",
      "subtitle": "En güzel anların fotoğrafları",
      "category": "Gallery",
    }
  ];

  Color getCategoryColor(String category) {
    switch (category) {
      case "Adventure":
        return Colors.orange;
      case "Education":
        return Colors.blue;
      case "Fun":
        return Colors.purple;
      case "Tips":
        return Colors.green;
      case "Story":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
   
    final filteredPosts = selectedCategory == "All"
        ? posts
        : posts.where((post) => post["category"] == selectedCategory).toList();

    return Scaffold(
      body: Column(
        children: [
          HeaderGlobal(
            onCategorySelected: (category) {
              setState(() {
                selectedCategory = category;
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemCount: filteredPosts.length,
                itemBuilder: (context, index) {
                  final post = filteredPosts[index];

                  return GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        selectedCategory = post["category"]!;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCategory = post["category"]!;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                decoration: BoxDecoration(
                                  color: getCategoryColor(post["category"]!),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  post["category"]!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              post["title"]!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              post["subtitle"]!,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const FooterGlobal(),
        ],
      ),
    );
  }
}