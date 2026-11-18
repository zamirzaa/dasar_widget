import 'package:flutter/material.dart';

class Tugas2Layout extends StatelessWidget {
  const Tugas2Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==========================================
              // 1. TOP HEADER (Row & Column)
              // ==========================================
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.blue.shade700,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'TUGAS 2 - SijaMart',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Belanja mudah dan hemat',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_rounded, color: Colors.black54),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // ==========================================
              // 2. GREETING & PROFILE (Row, Expanded, Column)
              // ==========================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Selamat pagi,',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Mirza 👋',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Mau belanja apa hari ini?',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue.shade100,
                    child: Icon(Icons.person, color: Colors.blue.shade700, size: 28),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // ==========================================
              // 3. SEARCH BAR (Row, Expanded)
              // ==========================================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.search, color: Colors.grey, size: 22),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Cari produk yang kamu inginkan...',
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                                border: InputBorder.none,
                                isDense: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E88E5),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune, color: Colors.white, size: 22),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              // ==========================================
              // 4. PROMO BANNER (Stack, Align, Column)
              // ==========================================
              Container(
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2196F3), Color(0xFF1976D2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      // Dekorasi lingkaran transparan
                      Positioned(
                        right: -20,
                        bottom: -30,
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withValues(alpha: 0.15),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        top: -40,
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withValues(alpha: 0.1),
                          ),
                        ),
                      ),

                      // Ikon Keranjang Belanja Dekoratif di Kanan
                      Positioned(
                        right: 25,
                        bottom: 25,
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          size: 75,
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),

                      // Badge HOT DEAL (Align di pojok kanan atas)
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: const EdgeInsets.only(top: 14, right: 14),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF9800),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'HOT DEAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),

                      // Konten Teks Promo (Column di kiri)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'PROMO SPESIAL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Diskon Hingga',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              '50%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                height: 1.1,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Belanja sekarang dan hemat!',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // ==========================================
              // 5. KATEGORI PRODUK (Row & Expanded)
              // ==========================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Kategori Produk',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Lihat semua',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: _buildCategoryItem(
                      icon: Icons.flatware,
                      label: 'Makanan',
                      bgColor: const Color(0xFFFFF3E0),
                      iconColor: const Color(0xFFF57C00),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCategoryItem(
                      icon: Icons.coffee,
                      label: 'Minuman',
                      bgColor: const Color(0xFFEFEBE9),
                      iconColor: const Color(0xFF6D4C41),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCategoryItem(
                      icon: Icons.devices,
                      label: 'Elektronik',
                      bgColor: const Color(0xFFE3F2FD),
                      iconColor: const Color(0xFF1976D2),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCategoryItem(
                      icon: Icons.checkroom,
                      label: 'Fashion',
                      bgColor: const Color(0xFFF3E5F5),
                      iconColor: const Color(0xFF8E24AA),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // ==========================================
              // 6. PRODUK POPULER (Row, Column, Stack, Expanded, Flexible, Align)
              // ==========================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Produk Populer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Lihat semua',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              // Baris Produk 1 & 2
              Row(
                children: [
                  Expanded(
                    child: _buildProductCard(
                      discount: '-12%',
                      title: 'Indomie Goreng',
                      originalPrice: 'Rp4.000',
                      discountPrice: 'Rp3.500',
                      bgColor: const Color(0xFFFFF8E1),
                      icon: Icons.ramen_dining,
                      iconColor: const Color(0xFFFFA000),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: _buildProductCard(
                      discount: '-20%',
                      title: 'Susu Fresh Milk',
                      originalPrice: 'Rp10.000',
                      discountPrice: 'Rp8.000',
                      bgColor: const Color(0xFFE1F5FE),
                      icon: Icons.local_drink,
                      iconColor: const Color(0xFF0288D1),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              // Baris Produk 3 & 4
              Row(
                children: [
                  Expanded(
                    child: _buildProductCard(
                      discount: '-14%',
                      title: 'Roti Cokelat',
                      originalPrice: 'Rp7.000',
                      discountPrice: 'Rp6.000',
                      bgColor: const Color(0xFFFBE9E7),
                      icon: Icons.bakery_dining,
                      iconColor: const Color(0xFFD84315),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: _buildProductCard(
                      discount: '-25%',
                      title: 'Keripik Kentang',
                      originalPrice: 'Rp12.000',
                      discountPrice: 'Rp9.000',
                      bgColor: const Color(0xFFFFF3E0),
                      icon: Icons.fastfood,
                      iconColor: const Color(0xFFE65100),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      // Tombol Back ke Menu
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: const Color(0xFF3F51B5),
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }

  // Widget Helper: Item Kategori (Column, Container)
  Widget _buildCategoryItem({
    required IconData icon,
    required String label,
    required Color bgColor,
    required Color iconColor,
  }) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Icon(icon, color: iconColor, size: 28),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // Widget Helper: Kartu Produk (Stack, Align, Column, Row, Flexible, Expanded)
  Widget _buildProductCard({
    required String discount,
    required String title,
    required String originalPrice,
    required String discountPrice,
    required Color bgColor,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian Atas: Gambar + Badge Diskon + Icon Wishlist (Stack & Align)
          Container(
            height: 115,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Stack(
              children: [
                // Icon / Ilustrasi Produk di Tengah
                Center(
                  child: Icon(icon, size: 52, color: iconColor),
                ),

                // Badge Diskon di Kiri Atas
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 8, left: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE53935),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      discount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Icon Wishlist di Kanan Atas
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border,
                      size: 18,
                      color: Colors.red.shade300,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bagian Bawah: Info & Harga Produk (Column, Row, Flexible, Expanded)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  originalPrice,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        discountPrice,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E88E5),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
