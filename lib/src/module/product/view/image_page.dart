import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.grey[300],
            width: MediaQuery.of(context).size.width * 0.3,
            child: NavigationListener(
              builder: (context, widget) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Girl'),
                        selected: Modular.to.path.contains('/girl'),
                        onTap: () {
                          Modular.to.navigate('./girl');
                        },
                      ),
                      ListTile(
                        title: Text('Star Wars'),
                        selected: Modular.to.path.contains('/starWars'),
                        onTap: () {
                          Modular.to.navigate('./starWars');
                        },
                      ),
                      ListTile(
                        title: Text('Pixel Art'),
                        selected: Modular.to.path.contains('/pixelArt'),
                        onTap: () {
                          Modular.to.navigate('./pixelArt');
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Container(
                child: RouterOutlet(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
