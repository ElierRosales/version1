import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de inicio'),
        elevation: 0
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Rutas'),
          onTap: (){ 
            Navigator.pushNamed(context, 'card');
          },
        ),
         separatorBuilder: (_,__) => const Divider(),
          itemCount: 5
      )
    );
  }
}