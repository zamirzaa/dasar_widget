import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Column',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Column Paling Sederhana
                Row(
                  children: const [
                    CircleAvatar(child: Text('1')),
                    SizedBox(width: 10),
                    Text(
                      'Column Paling Sederhana',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Nama'),
                      Text('Alamat'),
                      Text('No. Telepon'),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 2. Column dengan Text
                Row(
                  children: const [
                    CircleAvatar(child: Text('2')),
                    SizedBox(width: 10),
                    Text(
                      'Column dengan Text',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Belajar Flutter',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Materi Widget Column'),
                      Text('Kelas XII SIJA'),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 3. Column dengan Icon
                Row(
                  children: const [
                    CircleAvatar(child: Text('3')),
                    SizedBox(width: 10),
                    Text(
                      'Column dengan Icon',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    width: 100,
                    color: Colors.brown.shade100,
                    child: Column(
                      children: const [
                        Icon(Icons.home, size: 50, color: Colors.green),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 4. Column dengan SizedBox
                Row(
                  children: const [
                    CircleAvatar(child: Text('4')),
                    SizedBox(width: 10),
                    Text(
                      'Column dengan SizedBox',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Nama'),
                      SizedBox(height: 20),
                      Text('Alamat'),
                      SizedBox(height: 20),
                      Text('Telepon'),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 5. Column dengan mainAxisAlignment.start
                Row(
                  children: const [
                    CircleAvatar(child: Text('5')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.start',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 6. Column dengan mainAxisAlignment.center
                Row(
                  children: const [
                    CircleAvatar(child: Text('6')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.center',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 7. Column dengan mainAxisAlignment.end
                Row(
                  children: const [
                    CircleAvatar(child: Text('7')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.end',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 8. Column dengan mainAxisAlignment.spaceBetween
                Row(
                  children: const [
                    CircleAvatar(child: Text('8')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.spaceBetween',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 9. Column dengan mainAxisAlignment.spaceAround
                Row(
                  children: const [
                    CircleAvatar(child: Text('9')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.spaceAround',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 10. Column dengan mainAxisAlignment.spaceEvenly
                Row(
                  children: const [
                    CircleAvatar(child: Text('10')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan mainAxisAlignment.spaceEvenly',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.lime,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Pada Column, main axis adalah sumbu vertikal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 11. Column dengan crossAxisAlignment.start
                Row(
                  children: const [
                    CircleAvatar(child: Text('11')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan crossAxisAlignment.start',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.green.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Pada Column, cross axis adalah sumbu horizontal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 12. Column dengan crossAxisAlignment.center
                Row(
                  children: const [
                    CircleAvatar(child: Text('12')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan crossAxisAlignment.center',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.green.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('Pada Column, cross axis adalah sumbu horizontal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 13. Column dengan crossAxisAlignment.end
                Row(
                  children: const [
                    CircleAvatar(child: Text('13')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan crossAxisAlignment.end',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 250,
                    color: Colors.green.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('Pada Column, cross axis adalah sumbu horizontal'),
                        Text('Elektronik'),
                        Text('Fashion'),
                        Text('Kesehatan'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 14. Column dengan crossAxisAlignment.stretch
                Row(
                  children: const [
                    CircleAvatar(child: Text('14')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan crossAxisAlignment.stretch',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    color: Colors.green.shade200,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Pada Column, CrossAxisAlignment.stretch, Widget anak akan melebar memenuhi ruang horizontal yang tersedia.',
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(onPressed: () {}, child: const Text('Login')),
                        ElevatedButton(onPressed: () {}, child: const Text('Register')),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 15. Column dengan Button
                Row(
                  children: const [
                    CircleAvatar(child: Text('15')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan Button',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text('Login')),
                      ElevatedButton(onPressed: () {}, child: const Text('Register')),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 16. Column dengan TextField
                Row(
                  children: const [
                    CircleAvatar(child: Text('16')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan TextField',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      const Icon(Icons.lock, size: 80),
                      const SizedBox(height: 10),
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(onPressed: () {}, child: const Text('Login')),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 17. Column dengan Row
                Row(
                  children: const [
                    CircleAvatar(child: Text('17')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column dengan Row',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Card(
                    color: Colors.lime,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Laptop ASUS',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: const [
                              Icon(Icons.star, color: Colors.orange),
                              SizedBox(width: 5),
                              Text('4.8'),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text('Rp 8.000.000'),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 18. Column + Avatar + Profile (Nama diubah ke Mirza)
                Row(
                  children: const [
                    CircleAvatar(child: Text('18')),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Column + Avatar + Profile',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('/images/mirjaa'),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Mirza',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text('Web & Mobile Developer'),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purpleAccent,
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}