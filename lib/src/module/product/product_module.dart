import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'view/image_page.dart';

class ProductModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (ctx, args) => ProductPage(),
          children: [
            ChildRoute(
              '/girl',
              child: (_, __) => SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e0ea487d-c968-4ee7-a860-3cd74af061cc/d95h1ve-555c7940-9ddd-4d7c-ad6c-3f76b9edb5b4.jpg/v1/fill/w_1024,h_1486,q_75,strp/overlord_albedo_anime_artwork_hd_by_corphish2_d95h1ve-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ4NiIsInBhdGgiOiJcL2ZcL2UwZWE0ODdkLWM5NjgtNGVlNy1hODYwLTNjZDc0YWYwNjFjY1wvZDk1aDF2ZS01NTVjNzk0MC05ZGRkLTRkN2MtYWQ2Yy0zZjc2YjllZGI1YjQuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.ANrZBsKa2GDJEMe_K2jxS4THVY-xfapwPX8p9H9nurc',
                    ),
                     Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cf296ba5-0d5a-4ac6-b534-9ad3df9de58f/dcxzj3g-6ab19c45-5834-463e-8693-d5125d79d931.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NmMjk2YmE1LTBkNWEtNGFjNi1iNTM0LTlhZDNkZjlkZTU4ZlwvZGN4emozZy02YWIxOWM0NS01ODM0LTQ2M2UtODY5My1kNTEyNWQ3OWQ5MzEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.et9C0CBYIFdAR-7U3PLFmBqViIpSUaJQuUmgOdpqv0A',
                    ),
                  ],
                ),
              ),
            ),
            ChildRoute(
              '/blue',
              child: (_, __) => Container(color: Colors.blue),
            ),
            ChildRoute(
              '/yellow',
              child: (_, __) => Container(color: Colors.yellow),
            ),
          ],
        ),
      ];
}
