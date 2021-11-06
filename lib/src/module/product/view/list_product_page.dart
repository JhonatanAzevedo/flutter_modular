import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListProductPage extends StatelessWidget {
  final String id;
  const ListProductPage({ Key? key, required this.id }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Product $id'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Modular.to.pop();
        }, child: Text('Voltar')),
      ),
      
    );
  }
}