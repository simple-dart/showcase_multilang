import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_select_field/simple_dart_multilang_select_field.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class SelectFieldView extends View {
  SelectFieldView() {
    id = 'select_field';
    caption = 'SelectFiled';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkSingleOptionSelect
        ..addContent([
          MultilangSelectField()
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4', '$lkOption 5'])
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkSingleDisabled
        ..addContent([
          MultilangSelectField()
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4', '$lkOption 5'])
            ..disabled = true
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkMultiSelection
        ..addContent([
          MultilangSelectField()
            ..size = 4
            ..multiple = true
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4', '$lkOption 5'])
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkMultiDisabled
        ..addContent([
          MultilangSelectField()
            ..multiple = true
            ..size = 4
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4', '$lkOption 5'])
            ..disabled = true
        ])
        ..width = '300px'
    ]);
  }
}
