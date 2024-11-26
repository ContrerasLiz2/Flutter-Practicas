import 'package:flutter/material.dart';


// Clase principal con StatefulWidget
class Listas3 extends StatefulWidget {
  const Listas3({super.key});

  @override
  State<Listas3> createState() {
    return _ListasState();
  }
}

// Clase para los elementos de la lista
class Items {
  final String title;
  final String subtitle;
  Items(this.title, this.subtitle);
}

// Clase State
class _ListasState extends State<Listas3> {
  // Lista de elementos
  List<Items> items = [
    Items('Title 1', 'Subtitle 1'),
  ];

  // Método para agregar nuevos elementos
  void agregarElementos() {
    setState(() {
      int indexN = items.length + 1;
      items.add(Items('Title $indexN', 'Subtitle $indexN'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: const Icon(Icons.add_a_photo_sharp),
            title: Text(items[index].title),
            subtitle: Text(items[index].subtitle),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: agregarElementos,
        child: const Icon(Icons.add),
      ),
    );
  }
}
