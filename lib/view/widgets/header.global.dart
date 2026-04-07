import 'package:flutter/material.dart';

class HeaderGlobal extends StatelessWidget {
  const HeaderGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.white, // İstersen renk değiştirilebilir
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Sol taraf: Logo
          Row(
            children: [
              Image.asset(
                'assets/David.png', // Logo yolunu kendi projenize göre ayarla
                height: 40,
              ),
              const SizedBox(width: 8),
              const Text(
                'CatVibes', // Blog adı
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          // Sağ taraf: Menü (Hamburger)
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, size: 30),
            onSelected: (value) {
              // Menü seçimi
              if (value == 'Home') {
                // Anasayfa yönlendirme
              } else if (value == 'Categories') {
                // Kategoriler yönlendirme
              } else if (value == 'About') {
                // Hakkımızda yönlendirme
              } else if (value == 'Contact') {
                // İletişim yönlendirme
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Home', child: Text('Anasayfa')),
              const PopupMenuItem(value: 'Categories', child: Text('Kategoriler')),
              const PopupMenuItem(value: 'About', child: Text('Hakkımızda')),
              const PopupMenuItem(value: 'Contact', child: Text('İletişim')),
            ],
          ),
        ],
      ),
    );
  }
}