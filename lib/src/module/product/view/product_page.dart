import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.3,
            child: NavigationListener(builder: (context, widget) {
              return Column(
                children: [
                  ListTile(
                    title: Text('red'),
                    selected: Modular.to.path.contains('/red'),
                    onTap: () {
                      Modular.to.navigate('./red');
                    },
                  ),
                  ListTile(
                    title: Text('blue'),
                    selected: Modular.to.path.contains('/blue'),
                    onTap: () {
                      Modular.to.navigate('./blue');
                    },
                  ),
                  ListTile(
                    title: Text('yellow'),
                    selected: Modular.to.path.contains('/yellow'),
                    onTap: () {
                      Modular.to.navigate('./yellow');
                    },
                  ),
                ],
              );
            }),
          ),
          Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
    );
  }
}
