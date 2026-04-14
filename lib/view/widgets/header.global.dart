<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'package:blogcat/view/home.page.view.dart';
import 'package:flutter/material.dart';
import 'package:blogcat/view/login.view.dart';
>>>>>>> 7fd4a66 (update)

class HeaderGlobal extends StatefulWidget {
  final Function(String) onCategorySelected;

  const HeaderGlobal({super.key, required this.onCategorySelected});

  @override
  State<HeaderGlobal> createState() => _HeaderGlobalState();
}

class _HeaderGlobalState extends State<HeaderGlobal> {
  String selectedCategory = "All";

<<<<<<< HEAD
  final List<String> categories = [
=======
  /*final List<String> categories = [
>>>>>>> 7fd4a66 (update)
    "All",
    "Adventure",
    "Education",
    "Fun",
    "Tips",
    "Story",
<<<<<<< HEAD
    "gallery"
  ];

  @override
  Widget build(BuildContext context) {
   
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenWidth * 0.30; 
    final fontSize = screenWidth * 0.065; 
    final categoryFontSize = screenWidth * 0.04; 
    final categoryHeight = screenWidth * 0.09; 

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: screenWidth * 0.12, 
=======
    "gallery",
  ];*/

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenWidth * 0.30;
    final fontSize = screenWidth * 0.065;
    final categoryFontSize = screenWidth * 0.04;
    final categoryHeight = screenWidth * 0.09;

    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.only(
        top: screenWidth * 0.12,
>>>>>>> 7fd4a66 (update)
        bottom: screenWidth * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
<<<<<<< HEAD

=======
>>>>>>> 7fd4a66 (update)
          // 🔹 LOGO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Row(
<<<<<<< HEAD
              children: [
                Image.asset(
                  'assets/David.png',
                  height: logoHeight,
                ),
                SizedBox(width: screenWidth * 0.03),
                Text(
                  'CatVibes',
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
=======
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Image.asset(
                        'assets/David.png',
                        height: logoHeight,
                        
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Text(
                        'CatVibes',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                PopupMenuButton<String>(
                  color: Colors.white,
                  icon: const Icon(Icons.menu, size: 30),
          
                  onSelected: (value) {
                    if (value == "logout") {
                      Navigator.pushAndRemoveUntil(
    
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                        (route) => false,
                      );
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: "profile",
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.black54),
                          SizedBox(width: 10),
                          Text("Profile"),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: "settings",
                      child: Row(
                        children: [
                          Icon(Icons.settings, color: Colors.black54),
                          SizedBox(width: 10),
                          Text("Settings"),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: "logout",
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.black54),
                          SizedBox(width: 10),
                          Text("Logout"),
                        ],
                      ),
                    ),
                  ],
>>>>>>> 7fd4a66 (update)
                ),
              ],
            ),
          ),

          SizedBox(height: screenWidth * 0.04),

<<<<<<< HEAD
         
          SizedBox(
=======
       /* SizedBox(
>>>>>>> 7fd4a66 (update)
            height: categoryHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = category == selectedCategory;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                    });
                    widget.onCategorySelected(category);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
<<<<<<< HEAD
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
=======
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                    ),
>>>>>>> 7fd4a66 (update)
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black : Colors.grey[200],
                      borderRadius: BorderRadius.circular(categoryHeight / 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: categoryFontSize,
                      ),
                    ),
                  ),
                );
              },
            ),
<<<<<<< HEAD
          ),
=======
          ),*/
          
>>>>>>> 7fd4a66 (update)
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 7fd4a66 (update)
