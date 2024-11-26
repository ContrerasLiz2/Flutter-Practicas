import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget {
  const ListasPage({super.key});

  @override
  State<ListasPage> createState() => _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Row(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.accessible),
                title: Text('Título $index'), // Incluye el índice
                subtitle: Text('Subtítulo $index'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
