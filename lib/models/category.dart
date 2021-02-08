import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String image;

  const Category(
      {@required this.id,
      @required this.title,
      this.color = Colors.orange,
      this.image =
          'https://image.freepik.com/vetores-gratis/ops-erro-404-pagina-nao-encontrada-voltar-banner-erro-no-sistema-pagina-quebrada-mordido-donut-comida-pagina-com-elementos-de-design-para-o-site-relatorio-de-problemas-rosa_249405-3.jpg'});
}
