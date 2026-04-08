import 'package:flutter/material.dart';

class HeaderGlobal extends StatefulWidget {
  final Function(String) onCategorySelected;

  const HeaderGlobal({super.key, required this.onCategorySelected});

  @override
  State<HeaderGlobal> createState() => _HeaderGlobalState();
}

class _HeaderGlobalState extends State<HeaderGlobal> {
  String selectedCategory = "All";

  final List<String> categories = [
    "All",
    "Adventure",
    "Education",
    "Fun",
    "Tips",
    "Story",
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
        bottom: screenWidth * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔹 LOGO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Row(
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
                ),
              ],
            ),
          ),

          SizedBox(height: screenWidth * 0.04),

         
          SizedBox(
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
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
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
          ),
        ],
      ),
    );
  }
}