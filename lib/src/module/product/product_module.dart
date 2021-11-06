import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'view/list_product_page.dart';
import 'view/product_page.dart';

class ProductModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (ctx, args) => ProductPage(),
          children: [
            ChildRoute('/red', child: (_, __) => Container(color: Colors.red)),
            ChildRoute('/blue',
                child: (_, __) => Container(color: Colors.blue)),
            ChildRoute('/yellow',
                child: (_, __) => Container(color: Colors.yellow)),
          ],
        ),
        ChildRoute(
          '/list',
          child: (ctx, args) => ListProductPage(id: args.data ?? ''),
          transition: TransitionType.fadeIn,
          duration: Duration(seconds: 1),
        ),
      ];
}
