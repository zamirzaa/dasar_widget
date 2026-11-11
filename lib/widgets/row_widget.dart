import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Row'),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // 1. Row Paling Sederhana
          const Row(
            children: [
              Text('Flutter'),
              Text('Dart'),
              Text('Mobile'),
            ],
          ),
          const Divider(height: 30),

          // 2. Row Dengan Icon
          const Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 10),
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.person),
            ],
          ),
          const Divider(height: 30),

          // 3. Row Dengan Icon dan Text
          const Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 8),
              Text('Mirza'),
            ],
          ),
          const Divider(height: 30),

          // 4. Row Dengan SizedBox
          const Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 20),
              Text('Mirza'),
            ],
          ),
          const Divider(height: 30),

          // 5. Row Dengan mainAxisAlignment Start
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 6. Row Dengan mainAxisAlignment Center
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 7. Row Dengan mainAxisAlignment End
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 8. Row Dengan mainAxisAlignment SpaceBetween
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 9. Row Dengan mainAxisAlignment SpaceAround
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 10. Row Dengan mainAxisAlignment SpaceEvenly
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Andi'),
              Text('Budi'),
              Text('Ceppy'),
            ],
          ),
          const Divider(height: 30),

          // 11. Row Dengan crossAxisAlignment Start
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.person, size: 40),
              SizedBox(width: 8),
              Text('Mirza'),
            ],
          ),
          const Divider(height: 30),

          // 12. Row Dengan crossAxisAlignment Center
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 40),
              SizedBox(width: 8),
              Text('Mirza'),
            ],
          ),
          const Divider(height: 30),

          // 13. Row Dengan crossAxisAlignment End
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.person, size: 40),
              SizedBox(width: 8),
              Text('Mirza'),
            ],
          ),
          const Divider(height: 30),

          // 14. Row Dengan Expanded
          Row(
            children: [
              Expanded(child: Container(color: Colors.blue, height: 50)),
              Expanded(child: Container(color: Colors.red, height: 50)),
              Expanded(child: Container(color: Colors.green, height: 50)),
            ],
          ),
          const Divider(height: 30),

          // 15. Row Dengan Card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(color: Colors.amber, child: const Padding(padding: EdgeInsets.all(12.0), child: Text('Produk'))),
              Card(color: Colors.amber, child: const Padding(padding: EdgeInsets.all(12.0), child: Text('Pelanggan'))),
              Card(color: Colors.amber, child: const Padding(padding: EdgeInsets.all(12.0), child: Text('Distributor'))),
            ],
          ),
          const Divider(height: 30),

          // 16. Row Dengan Expanded dan Flex
          Row(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.blue, height: 60)),
              Expanded(flex: 3, child: Container(color: Colors.red, height: 60)),
            ],
          ),
          const Divider(height: 30),

          // 18. Row dengan Spacer
          const Row(
            children: [
              Icon(Icons.menu),
              Spacer(),
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.person),
            ],
          ),
          const Divider(height: 30),

          // 19. Row untuk Header
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(width: 10),
                  Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 15),
                  Icon(Icons.person),
                ],
              ),
            ],
          ),
          const Divider(height: 30),

          // 19. Row untuk Profile
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purple.shade100,
                child: const Icon(Icons.person, color: Colors.purple),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Donianto', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('XII SIJA', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          const Divider(height: 30),

          // 20. Row untuk Rating
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star_half, color: Colors.amber),
              SizedBox(width: 8),
              Text('4.5', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(height: 30),

          // 21. Row untuk Harga Produk
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Rp 8.500.000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Icon(Icons.favorite_border),
            ],
          ),
          const Divider(height: 30),

          // 22. Row dengan Image dan Informasi Produk
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://picsum.photos/60/60',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Laptop ASUS', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Rp 8.500.000', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          const Divider(height: 30),

          // 23. Row dengan Button
          Row(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text('Beli')),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: const Text('Detail')),
            ],
          ),
          const Divider(height: 30),

          // 25. Row dengan mainAxisSize Min
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.star),
              Text('Rating'),
            ],
          ),
          const Divider(height: 30),

          // 26. Row di Dalam Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.shopping_cart),
                      SizedBox(width: 10),
                      Text('Laptop ASUS', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
          const Divider(height: 30),

          // 27. Row dengan Card Dashboard
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.shopping_cart, size: 20),
                        SizedBox(width: 8),
                        Text('Produk', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.people, size: 20),
                        SizedBox(width: 8),
                        Text('Pelanggan', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 30),

          // 28. Row dengan VerticalDivider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Produk'),
              VerticalDivider(color: Colors.grey, thickness: 1),
              Text('Pelanggan'),
              VerticalDivider(color: Colors.grey, thickness: 1),
              Text('Distributor'),
              VerticalDivider(color: Colors.grey, thickness: 1),
              Text('Diskon'),
            ],
          ),
          const Divider(height: 30),

          // 29. Row di Dalam Column
          Column(
            children: const [
              Text('Produk Terbaru', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(label: Text('Laptop')),
                  Chip(label: Text('Smartphone')),
                ],
              ),
            ],
          ),
          const Divider(height: 30),

          // 30. Row Bermasalah Jika Teks Terlalu Panjang
          const Row(
            children: [
              Text('Ini adalah teks yang sangat panjang dan dapat menyebabkan overflow di sisi kanan layar jika tidak diatur dengan benar.'),
            ],
          ),
          const Divider(height: 30),

          // 31. Row + Expanded untuk Teks Panjang
          const Row(
            children: [
              Icon(Icons.info, color: Colors.blue),
              SizedBox(width: 8),
              Expanded(
                child: Text('Flutter merupakan framework yang digunakan untuk membuat aplikasi multiplatform.'),
              ),
            ],
          ),
          const Divider(height: 30),

          // 32. Contoh Product Card Menggunakan Row
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/70/70',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Laptop ASUS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Rp 8.500.000', style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text('4.8', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}