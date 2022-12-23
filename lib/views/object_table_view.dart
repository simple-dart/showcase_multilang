import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_object_table/simple_dart_multilang_object_table.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class ObjectTableView extends View {
  ObjectTableView() {
    id = 'object_table';
    caption = 'ObjectTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final objectTable = createObjectTable();
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkMultilangObjectTable
        ..addContent([objectTable])
        ..fillContent = true
        ..fullSize(),
    ]);
  }

  MultilangObjectTable createObjectTable() {
    final ret = MultilangObjectTable<ObjectTableObj>(objectRowAdapter, selectable: true)
      ..fillContent = true
      ..createColumn('$lkColumn 1', 100, sortable: true)
      ..createColumn('$lkColumn 2', 100, sortable: true)
      ..createColumn('$lkColumn 3', 100, sortable: true);
    for (var i = 0; i < 100; i++) {
      ret.createObjectRow(ObjectTableObj()
        ..column1 = '$lkValue $i'
        ..column2 = i
        ..column3 = DateTime.now().add(-Duration(days: i)));
    }
    return ret;
  }
}

class ObjectTableObj {
  String column1 = '';
  int column2 = 0;
  DateTime column3 = DateTime.now();
}

List<dynamic> objectRowAdapter(ObjectTableObj object) => [object.column1, object.column2, object.column3];
