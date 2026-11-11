import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Expanded', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Konsep Dasar Expanded
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('1', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Text('Konsep Dasar Expanded (Di dalam Row)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Tanpa Expanded (height: 50, width: 50)', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('A', style: TextStyle(fontWeight: FontWeight.bold)))),
                      SizedBox(width: 3),
                      Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('B', style: TextStyle(fontWeight: FontWeight.bold)))),
                      SizedBox(width: 3),
                      Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('C', style: TextStyle(fontWeight: FontWeight.bold)))),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Dengan Expanded (height: 50, width: 50)', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Expanded(child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('A', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Expanded(child: Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('B', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Expanded(child: Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('C', style: TextStyle(fontWeight: FontWeight.bold))))),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // 2. Mengatur perbandingan ukuran menggunakan flex
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('2', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Expanded(child: Text('Mengatur perbandingan ukuran menggunakan flex (height: 50, width: 50)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('F1', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Expanded(flex: 2, child: Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('F2', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Expanded(flex: 3, child: Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('F3', style: TextStyle(fontWeight: FontWeight.bold))))),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // 3. Perbedaan Expanded dan Flexible
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('3', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Expanded(child: Text('Perbedaan Expanded dan Flexible (height: 50, width: 50)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
                          height: 50,
                          width: 50,
                          child: Center(child: Text('E', style: TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                      SizedBox(width: 3),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)),
                          height: 50,
                          width: 50,
                          child: Center(child: Text('F1', style: TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                      SizedBox(width: 3),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)),
                          height: 50,
                          width: 50,
                          child: Center(child: Text('F2', style: TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          backgroundColor: Colors.purpleAccent,
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}