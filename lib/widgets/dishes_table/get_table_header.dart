import 'package:flutter/material.dart';
import 'package:food_product_list/widgets/text_with_padding.dart';

TableRow getTableHeader() => const TableRow(
      children: <Widget>[
        TextWithPadding(content: 'Название', bold: true),
        TextWithPadding(content: 'Стоимость', bold: true),
        TextWithPadding(content: 'Тип', bold: true),
        TextWithPadding(content: 'Вес', bold: true),
        SizedBox(height: 40),
        SizedBox.shrink(),
      ],
    );
