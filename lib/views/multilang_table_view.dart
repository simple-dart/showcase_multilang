import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_table/simple_dart_multilang_table.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class SimpleTableView extends View {
  SimpleTableView() {
    id = 'multilang_table';
    caption = 'MultilangTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final simpleTable = createMultilangTable();
    final multiRowTable = createMultirowTable();
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkMultilangTable
        ..addContent([simpleTable])
        ..fullSize()
        ..fillContent = true,
      MultilangHeadedPanel()
        ..langKey = lkMultirowTable
        ..addContent([multiRowTable])
        ..fullSize()
        ..fillContent = true,
    ]);
  }

  MultilangTable createMultilangTable() {
    final ret = MultilangTable()
      ..width = '400px'
      ..fillContent = true
      ..createColumn('^Column 1', 100, sortable: true)
      ..createColumn('^Column 2', 100, sortable: true)
      ..createColumn('^Column 3', 100)
      ..createColumn('^Column 4', 100)
      ..createColumn('^Column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow(['^Value 1', 1, '^Value 3', '^Value 4', '^Value 5'])
        ..createRow(['^Value 3', 55.0, '^Value 3', '^Value 4', '^Value 5'])
        ..createRow(['^Value 1', '22', '^Value 3', '^Value 4', '^Value 5']);
    }
    return ret;
  }

  MultilangTable createMultirowTable() {
    final ret = MultilangTable()
      ..fillContent = true
      ..createColumn('^Column 1', 100)
      ..createColumn('^Column 2', 100)
      ..createColumn('^Column 3', 100)
      ..createColumn('^Column 4', 100)
      ..createColumn('^Column 5', 100);
    for (var i = 0; i < 100; i++) {
      ret
        ..createRow([
          ['^Row 1', '^Row 2', '^Row 3'],
          ['^Row 1', '^Row 2'],
          ['^Row 1'],
          ['^Row 1', '^Row 2'],
          ['^Row 1', '^Row 2', '^Row 3']
        ])
        ..createRow([
          ['^Value 1'],
          ['^Value 2'],
          ['^Value 3'],
          ['^Value 4'],
          ['^Value 5']
        ]);
    }
    return ret;
  }
}
