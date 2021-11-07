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
              '/starWars',
              child: (_, __) => SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c0787ea4-0333-4bae-a0c7-2a4e3584ba67/d8piwtu-7b26a268-d0fd-42bb-81bd-af63521566d8.png/v1/fill/w_1024,h_1434,q_80,strp/lord_revan_by_corbinhunter_d8piwtu-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQzNCIsInBhdGgiOiJcL2ZcL2MwNzg3ZWE0LTAzMzMtNGJhZS1hMGM3LTJhNGUzNTg0YmE2N1wvZDhwaXd0dS03YjI2YTI2OC1kMGZkLTQyYmItODFiZC1hZjYzNTIxNTY2ZDgucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.nhCgA4slhqARMEfopYDVBsFYAGSFKsjapjRQICCbOs8',
                    ),
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a0853385-8a52-4b79-89c3-ffe5a26ba950/dbx9l6f-b366164d-5409-4fd0-a88d-1201c2429537.jpg/v1/fill/w_1280,h_1920,q_75,strp/_you_have_failed_me_for_the_last_time_____by_andibaze_dbx9l6f-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTkyMCIsInBhdGgiOiJcL2ZcL2EwODUzMzg1LThhNTItNGI3OS04OWMzLWZmZTVhMjZiYTk1MFwvZGJ4OWw2Zi1iMzY2MTY0ZC01NDA5LTRmZDAtYTg4ZC0xMjAxYzI0Mjk1MzcuanBnIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.gN51PpNotgzeqS4NfhaIMug5zm5eMfQSqipbxiCgVVc',
                    ),
                     Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d3a966a5-1914-42a3-89c2-9463b53a1288/d7h03h3-79fd53af-cac7-423c-b196-689a7253451d.jpg/v1/fill/w_1000,h_707,q_75,strp/master_yoda_by_apfelgriebs_d7h03h3-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzA3IiwicGF0aCI6IlwvZlwvZDNhOTY2YTUtMTkxNC00MmEzLTg5YzItOTQ2M2I1M2ExMjg4XC9kN2gwM2gzLTc5ZmQ1M2FmLWNhYzctNDIzYy1iMTk2LTY4OWE3MjUzNDUxZC5qcGciLCJ3aWR0aCI6Ijw9MTAwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.qBZkzfGK9N_miufHu3fuHF0OWfg7apagg9Ey8eyYRqw',
                    ),
                  ],
                ),
              ),
            ),
            ChildRoute(
              '/pixelArt',
              child: (_, __) => SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2287be15-500c-4ec4-88f0-f0b4d8bab502/deqchit-294faf16-c28e-4a18-8d2f-8cf4d261e027.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzIyODdiZTE1LTUwMGMtNGVjNC04OGYwLWYwYjRkOGJhYjUwMlwvZGVxY2hpdC0yOTRmYWYxNi1jMjhlLTRhMTgtOGQyZi04Y2Y0ZDI2MWUwMjcuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.670yLlI95-L9vaaPRYRopBUNa1Q0R6V-SUK2zglAb1s',
                    ),
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1f4b028b-04bb-483b-a43f-c3dd3b534171/dequ2ri-ea4c27c2-bf03-4887-a6f7-845fa7a75026.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzFmNGIwMjhiLTA0YmItNDgzYi1hNDNmLWMzZGQzYjUzNDE3MVwvZGVxdTJyaS1lYTRjMjdjMi1iZjAzLTQ4ODctYTZmNy04NDVmYTdhNzUwMjYuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ctQFVJJ7yfB5ikCLO9wl7JwukYOi4fRXgVr_L8yglE0',
                    ),
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3a5d167-29ac-4e0d-ae0b-6d0b5aef4031/deqp6r7-4fb98f79-1b0a-4a76-8712-b94d64f55f53.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYTVkMTY3LTI5YWMtNGUwZC1hZTBiLTZkMGI1YWVmNDAzMVwvZGVxcDZyNy00ZmI5OGY3OS0xYjBhLTRhNzYtODcxMi1iOTRkNjRmNTVmNTMuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.HJdIrnmZ9L7fZzHOlwXhpF2HfD6B-bD3x7BgHddeK_o',
                    ),
                     Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4da5a0e9-cc2d-4a7d-b416-1805190fb54a/deqbihz-65c6e851-ca3f-4081-826c-4a0b7298ca38.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzRkYTVhMGU5LWNjMmQtNGE3ZC1iNDE2LTE4MDUxOTBmYjU0YVwvZGVxYmloei02NWM2ZTg1MS1jYTNmLTQwODEtODI2Yy00YTBiNzI5OGNhMzguZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.EIKsLR0A4UAdHBYMrE98CQfhCVhuxR-Qvu_CPylNcwk',
                    ),
                     Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3a5d167-29ac-4e0d-ae0b-6d0b5aef4031/ddwqtd2-d5dd2f1a-6c70-4f94-860a-c31dc8dbabb6.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYTVkMTY3LTI5YWMtNGUwZC1hZTBiLTZkMGI1YWVmNDAzMVwvZGR3cXRkMi1kNWRkMmYxYS02YzcwLTRmOTQtODYwYS1jMzFkYzhkYmFiYjYuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P1HOpIw1MJuzn4n2Ja8hWmT1qThJGkF1m6ZqiYxcU9o',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ];
}
