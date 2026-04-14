<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/footer.global.dart';
import 'package:blogcat/view/widgets/header.global.dart';
=======

import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/footer.global.dart';
import 'package:blogcat/view/widgets/header.global.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:blogcat/view/category.dart';
>>>>>>> 7fd4a66 (update)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
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
=======
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
>>>>>>> 7fd4a66 (update)

  Color getCategoryColor(String category) {
    switch (category) {
      case "Adventure":
<<<<<<< HEAD
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
=======
        return const Color.fromARGB(255, 5, 5, 5);
      case "Education":
        return const Color.fromARGB(255, 5, 5, 5);
      case "Fun":
        return const Color.fromARGB(255, 5, 5, 5);
      case "Tips":
        return const Color.fromARGB(255, 5, 5, 5);
      case "Story":
        return const Color.fromARGB(255, 5, 5, 5);
      default:
        return const Color.fromARGB(255, 5, 5, 5);
>>>>>>> 7fd4a66 (update)
    }
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
   
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
=======
    return Scaffold(
      backgroundColor: Colors.white,
       body: Column(
        children: [
          HeaderGlobal(onCategorySelected: (category) {}),

          Expanded(
  
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('stories_homepage')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text("No data found"));
                  }

                  final docs = snapshot.data!.docs;

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.85,
                        ),
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      final post = docs[index].data() as Map<String, dynamic>;

                      final category = post["category"] ?? "";

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategoryPage(category: category),
                            ),
                          );
                        },
                        child: Card(
                          color: const Color.fromARGB(255, 250, 248, 219),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: getCategoryColor(category),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    category,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  post["title"] ?? "",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  post["subtitle"] ?? "",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
>>>>>>> 7fd4a66 (update)
                  );
                },
              ),
            ),
          ),
<<<<<<< HEAD
=======

>>>>>>> 7fd4a66 (update)
          const FooterGlobal(),
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 7fd4a66 (update)
