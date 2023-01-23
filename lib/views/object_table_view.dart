import 'package:simple_dart_multilang_button/simple_dart_multilang_button.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_object_table/simple_dart_multilang_object_table.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

import '../translations.dart';

class ObjectTableView extends View {
  late MultilangObjectTable table;

  MultilangButton resetObjectsButton = MultilangButton()
    ..langKey = lkResetObjects
    ..width = '300px';

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
    table = createObjectTable();
    resetObjectsButton.onClick.listen((event) {
      final objects = <ObjectTableObj>[];
      for (var i = 0; i < 100; i++) {
        objects.add(ObjectTableObj()
          ..column1 = '$lkValue ${i + 1}'
          ..column2 = i
          ..column3 = DateTime.now().add(-Duration(days: i)));
      }
      table.objects = objects;
    });

    addAll([
      MultilangHeadedPanel()
        ..vertical = true
        ..langKey = lkMultilangObjectTable
        ..addContent([resetObjectsButton, table])
        ..fillContent = true
        ..fullSize(),
    ]);
  }

  MultilangObjectTable<ObjectTableObj> createObjectTable() {
    final ret = MultilangObjectTable<ObjectTableObj>(objectRowAdapter)
      ..fillContent = true
      ..initColumns([
        TableColumnDescr()
          ..caption = '$lkColumn 1'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = '$lkColumn 2'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = '$lkColumn 3'
          ..width = 100
          ..sortable = true,
      ])
      ..checkboxVisible = true
      ..onSelect.listen((event) {
        print('Selected: ${event.selected}');
      });
    final objects = <ObjectTableObj>[];
    for (var i = 0; i < 100; i++) {
      objects.add(ObjectTableObj()
        ..column1 = '$lkValue $i'
        ..column2 = i
        ..column3 = DateTime.now().add(-Duration(days: i)));
    }
    ret.objects = objects;
    return ret;
  }
}

class ObjectTableObj {
  String column1 = '';
  int column2 = 0;
  DateTime column3 = DateTime.now();
}

List<dynamic> objectRowAdapter(ObjectTableObj object) => [object.column1, object.column2, object.column3];
