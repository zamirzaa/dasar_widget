import 'package:flutter/material.dart';

class Tugas1Layout extends StatelessWidget {
  const Tugas1Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tugas 1 - Layout Widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Buatlah layout widget sebagai berikut:', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // ==========================================
              // 1. KOTAK BERTUMPUK
              // ==========================================
              const Text(
                '1. Kotak Bertumpuk',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 280,
                  height: 280,
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.blue,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 140,
                          height: 140,
                          color: Colors.red,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 110,
                          height: 110,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ==========================================
              // 2. BANNER PROMOSI (Menggunakan Asset Image)
              // ==========================================
              const Text(
                '2. Banner Promosi',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    // Gambar Asset untuk Banner Promosi
                    Image.asset(
                      'images/steak.png', // Ganti dengan nama file gambarmu
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                    // Efek gradasi/layer gelap tipis agar teks lebih terbaca (opsional)
                    Container(
                      width: double.infinity,
                      height: 180,
                     color: Colors.black.withValues(alpha: 0.3),
                    ),
                    // Teks dan Tombol di atas gambar
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PROMO SPESIAL!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Diskon hingga 50% untuk produk pilihan.',
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('Lihat Promo'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ==========================================
              // 3. PROFIL SISWA DENGAN IKON EDIT
              // ==========================================
              const Text(
                '3. Profil Siswa dengan Ikon Edit',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.person, size: 70, color: Colors.white),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.orange,
                            child: const Icon(Icons.edit, size: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Mirza',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Kelas XII SIJA',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person_outline, size: 16),
                      label: const Text('Lihat Profil'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ==========================================
              // 4. BADGE KERANJANG BELANJA
              // ==========================================
              const Text(
                '4. Badge Keranjang Belanja',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.shopping_cart, size: 50, color: Colors.blue),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '5',
                              style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Keranjang Belanja',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Anda memiliki 5 produk di keranjang',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ==========================================
              // 5. KARTU PRODUK MINIMARKET (Menggunakan Asset Image)
              // ==========================================
              const Text(
                '5. Kartu Produk Minimarket',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Center(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Bagian Gambar Produk dan Label Diskon
                        Stack(
                          children: [
                            // Gambar Asset Produk Minyak Goreng
                            Image.asset(
                              'images/minyakgoreng.jpg', // Ganti dengan nama file gambarmu
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'DISKON 20%',
                                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: const Icon(Icons.favorite_border, size: 18, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        // Bagian Detail Harga & Tombol
                        Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.amber.shade300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Minyak Goreng 1 Liter',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Rp 20.000',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                              ),
                              const Text(
                                'Harga sebelum diskon: Rp 25.000',
                                style: TextStyle(fontSize: 11, color: Colors.black54, decoration: TextDecoration.lineThrough),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shopping_cart_outlined, size: 16),
                                  label: const Text('Tambah ke Keranjang'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black87,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}