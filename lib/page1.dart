import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Praktikum Grid 2x2"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Baris pertama
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKotak(Colors.blue, "Kotak 1"),
                const SizedBox(width: 20),
                buildKotak(Colors.lightBlue, "Kotak 2"),
              ],
            ),
            const SizedBox(height: 20),
            // Baris kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKotak(Colors.blueAccent, "Kotak 3"),
                const SizedBox(width: 20),
                buildKotak(Colors.indigo, "Kotak 4"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat kotak
  Widget buildKotak(Color warna, String label) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.favorite, color: Colors.red, size: 30),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
