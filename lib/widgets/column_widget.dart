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
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  width: 100,
                  color: const Color.fromARGB(255, 107, 48, 44),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 50,
                        color: Color.fromARGB(255, 68, 243, 33),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Color.fromARGB(255, 68, 243, 33),
                        ),
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
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  Text(
                    'Column dengan mainAxisAlignment.start',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 300,
                  color: Colors.lime,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                  Text(
                    'Column dengan mainAxisAlignment.center',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 300,
                  color: Colors.lime,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  Text(
                    'Column dengan mainAxisAlignment.end',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 300,
                  color: Colors.lime,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 300,
                  color: Colors.lime,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pada Column, main axis adalah sumbu vertikal'),
                      Text('Elektronik'),
                      Text('Fashion'),
                      Text('Kesehatan'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
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