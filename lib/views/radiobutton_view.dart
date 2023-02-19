import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_radio_field/simple_dart_multilang_radio_field.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class RadioView extends View {
  RadioView() {
    id = 'radio';
    caption = 'RadioField';
    fullSize();
    fillContent = true;
    vertical = true;
    padding = '10px';
    spacing = '10px';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkRowLayout
        ..addContent([
          MultilangRadioField('row')..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4'])
        ])
        ..width = '300px'
        ..wrap = true,
      MultilangHeadedPanel()
        ..langKey = lkColumnLayout
        ..addContent([
          MultilangRadioField('vertical')
            ..vertical = true
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4'])
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkDisabled
        ..addContent([
          MultilangRadioField('disabled')
            ..vertical = true
            ..initOptions(['$lkOption 1', '$lkOption 2', '$lkOption 3', '$lkOption 4'])
            ..disabled = true
        ])
        ..width = '300px'
    ]);
  }
}
