import 'package:simple_dart_multilang_checkbox/simple_dart_multilang_checkbox.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class CheckboxView extends View {
  CheckboxView() {
    id = 'checkbox';
    caption = 'CheckboxField';
    fullSize();
    fillContent = true;
    vertical = true;
    padding = '10px';
    spacing = '10px';
    add(MultilangHeadedPanel()
      ..langKey = lkCheckboxFields
      ..addContent([
        MultilangCheckbox()
          ..langKey = '$lkOption 1'
          ..value = true,
        MultilangCheckbox()..langKey = '$lkOption 2',
        MultilangCheckbox()
          ..langKey = lkDisabled
          ..disabled = true,
      ])
      ..width = '300px');
  }
}
