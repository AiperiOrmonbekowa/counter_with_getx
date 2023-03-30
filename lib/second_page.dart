import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key, required this.count});

  int count;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _decrement() {
    setState(() {
      widget.count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.count}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, widget.count);
                },
                child: const Text('Do to Second Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrement,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
