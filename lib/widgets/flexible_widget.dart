import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flexible', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Konsep Dasar Flexible
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('1', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Text('Konsep Dasar Flexible (Di dalam Row)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Tanpa Flexible (height: 50, width: 50)', style: TextStyle(fontWeight: FontWeight.bold)),
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
                  child: Text('Dengan Flexible (height: 50, width: 50)', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Flexible(child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('A', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Flexible(child: Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('B', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Flexible(child: Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)), height: 50, width: 50, child: Center(child: Text('C', style: TextStyle(fontWeight: FontWeight.bold))))),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // 2. Menggunakan Flexible dengan FlexFit.loose
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('2', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Expanded(child: Text('Menggunakan Flexible dengan FlexFit.loose\n(height: 50, width: 200)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
                          height: 50,
                          width: 200,
                          child: Center(child: Text('F5', style: TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // 3. Menggunakan Flexible dengan FlexFit.tight
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('3', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Expanded(child: Text('Menggunakan Flexible dengan FlexFit.tight\n(height: 50, width: 200)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
                          height: 50,
                          width: 200,
                          child: Center(child: Text('FT', style: TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // 4. Mengatur perbandingan ukuran menggunakan flex
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.purple, child: Text('4', style: TextStyle(color: Colors.yellow))),
                    SizedBox(width: 10),
                    Expanded(child: Text('Mengatur perbandingan ukuran menggunakan flex (height: 100)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)), height: 100, child: Center(child: Text('F1', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Flexible(flex: 2, child: Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)), height: 100, child: Center(child: Text('F2', style: TextStyle(fontWeight: FontWeight.bold))))),
                      SizedBox(width: 3),
                      Flexible(flex: 3, child: Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)), height: 100, child: Center(child: Text('F3', style: TextStyle(fontWeight: FontWeight.bold))))),
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