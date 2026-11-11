import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Align', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAlignItem('1', 'Align Top Left', Alignment.topLeft),
                _buildAlignItem('2', 'Align Top Center', Alignment.topCenter),
                _buildAlignItem('3', 'Align Top Right', Alignment.topRight),
                _buildAlignItem('4', 'Align Center Left', Alignment.centerLeft),
                _buildAlignItem('5', 'Align Center', Alignment.center),
                _buildAlignItem('6', 'Align Center Right', Alignment.centerRight),
                _buildAlignItem('7', 'Bottom Left', Alignment.bottomLeft), // Sesuai modul
                _buildAlignItem('8', 'Align Bottom Center', Alignment.bottomCenter),
                _buildAlignItem('9', 'Bottom Right', Alignment.bottomRight),
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

  Widget _buildAlignItem(String nomor, String title, Alignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundColor: Colors.purple, child: Text(nomor, style: TextStyle(color: Colors.yellow))),
            SizedBox(width: 10),
            Expanded(child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 10.0),
          child: Container(
            height: 300,
            color: Colors.orange,
            child: Align(
              alignment: alignment,
              child: Container(
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                height: 50,
                width: 120,
                child: Center(
                  child: Text(
                    title.replaceFirst('Align ', ''),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}