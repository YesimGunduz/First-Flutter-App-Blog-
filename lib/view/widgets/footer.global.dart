import 'package:flutter/material.dart';

class FooterGlobal extends StatelessWidget {
  const FooterGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          const Text(
            "David’in maceralarını keşfet, kedilerle dolu bir dünyaya katıl!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.camera_alt), // Instagram yerine ikon
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.alternate_email), // Twitter yerine ikon
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.video_library), // TikTok yerine ikon
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "© 2026 MyCatIsDavid",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}