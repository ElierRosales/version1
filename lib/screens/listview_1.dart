import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const['Opción 1','Opción 2','Opción 3'];
   
  const Listview1Screen ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.home_filled),
          onTap: (){

          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}