import 'package:simple_dart_loadable_object_table/simple_dart_loadable_object_table.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_object_table/simple_dart_multilang_object_table.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

import '../translations.dart';

class LoadableObjectTableView extends View {
  LoadableObjectTableView() {
    id = 'loadable_object_table';
    caption = 'LoadableObjectTable';
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    vertical = true;
    fullSize();
    final exampleMultilangObjectTable = ExampleMultilangObjectTable();
    final exampleMultilangRepository = ExampleRepository();
    final loadableObjectTable = LoadableObjectTable(exampleMultilangObjectTable, exampleMultilangRepository.loadNext);
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkRepositoryTable
        ..addContent([exampleMultilangObjectTable])
        ..fullSize()
        ..fillContent = true
    ]);
    loadableObjectTable.handleLoadNext();
  }
}

class ExampleObject {
  String column1 = '';
  int column2 = 0;
  bool column3 = false;
}

class ExampleRepository {
  ExampleRepository();

  int lastKey = 0;
  int totalCount = 10000000000;

  int pageSize = 100;

  int loadedCount = 0;

  Future<List<ExampleObject>> loadNext() async {
    var lastId = 0;
    lastId = lastKey;
    lastKey = lastId + pageSize;
    final ret = <ExampleObject>[];
    for (var i = lastId; i < lastId + pageSize; i++) {
      final obj = ExampleObject()
        ..column1 = '$lkValue $i'
        ..column2 = i
        ..column3 = i % 2 == 0;
      ret.add(obj);
      loadedCount++;
    }
    return ret;
  }
}

List<dynamic> exampleObjectRowAdapter(ExampleObject object) => [
      object.column1,
      object.column2,
      '^${object.column3}',
    ];

ExampleRepository exampleRepository = ExampleRepository();

class ExampleMultilangObjectTable extends MultilangObjectTable<ExampleObject> {
  ExampleMultilangObjectTable() : super(exampleObjectRowAdapter) {
    fillContent = true;
    fullSize();
    initColumns([
      TableColumnDescr()
        ..caption = '$lkColumn 1'
        ..width = 100,
      TableColumnDescr()
        ..caption = '$lkColumn 2'
        ..width = 100,
      TableColumnDescr()
        ..caption = '$lkColumn 3'
        ..width = 100
    ]);
  }
}
