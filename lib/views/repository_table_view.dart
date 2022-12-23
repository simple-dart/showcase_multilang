import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_repository_table/simple_dart_multilang_repository_table.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class RepositoryTableView extends View {
  RepositoryTableView() {
    id = 'repository_table';
    caption = 'RepositoryTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final exampleRepositoryTable = ExampleRepositoryTable()..loadMore();
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkRepositoryTable
        ..addContent([exampleRepositoryTable])
        ..fullSize()
        ..fillContent = true
    ]);
  }
}

class ExampleRepositoryObject {
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

  Future<List<ExampleRepositoryObject>> loadMore() async {
    var lastId = 0;
    lastId = lastKey;
    lastKey = lastId + pageSize;
    final ret = <ExampleRepositoryObject>[];
    for (var i = lastId; i < lastId + pageSize; i++) {
      final obj = ExampleRepositoryObject()
        ..column1 = '$lkValue $i'
        ..column2 = i
        ..column3 = i % 2 == 0;
      ret.add(obj);
      loadedCount++;
    }
    return ret;
  }
}

List<dynamic> exampleObjectRowAdapter(ExampleRepositoryObject object) => [
      object.column1,
      object.column2,
      '^${object.column3}',
    ];

ExampleRepository exampleRepository = ExampleRepository();

class ExampleRepositoryTable extends MultilangRepositoryTable<ExampleRepositoryObject> {
  ExampleRepositoryTable() : super(exampleRepository.loadMore, exampleObjectRowAdapter) {
    fillContent = true;
    fullSize();
    createColumn('$lkColumn 1', 100);
    createColumn('$lkColumn 2', 100);
    createColumn('$lkColumn ', 100);
  }
}
