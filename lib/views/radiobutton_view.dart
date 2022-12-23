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
          MultilangRadioField()
            ..groupName = 'row'
            ..addRadioButton('opt1', '$lkOption 1')
            ..addRadioButton('opt2', '$lkOption 2')
            ..addRadioButton('opt3', '$lkOption 3')
            ..addRadioButton('opt4', '$lkOption 4')
        ])
        ..width = '300px'
        ..wrap = true,
      MultilangHeadedPanel()
        ..langKey = lkColumnLayout
        ..addContent([
          MultilangRadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', '$lkOption 1')
            ..addRadioButton('opt2', '$lkOption 2')
            ..addRadioButton('opt3', '$lkOption 3')
            ..addRadioButton('opt4', '$lkOption 4')
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkDisabled
        ..addContent([
          MultilangRadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', '$lkOption 1')
            ..addRadioButton('opt2', '$lkOption 2')
            ..addRadioButton('opt3', '$lkOption 3')
            ..addRadioButton('opt4', '$lkOption 4')
            ..disabled = true
        ])
        ..width = '300px'
    ]);
  }
}
