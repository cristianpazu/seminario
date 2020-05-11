import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preciopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('precio')),
      body: DataTable(columns: [
        DataColumn(
          label: Text('Hora'),
        ),
        DataColumn(label: Text('PRECIO')),
      ], rows: [
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(Text('1000')),
        ]),
        DataRow(cells: [
          DataCell(
            Text('2'),
          ),
          DataCell(Text('2000')),
        ]), //
        DataRow(cells: [
          DataCell(
            Text('3-4'),
          ),
          DataCell(Text('6000')),
        ]), //
        DataRow(cells: [
          DataCell(
            Text('5+'),
          ),
          DataCell(Text('12000')),
        ]),
      ]), //
    );
  }
}
