import 'package:simple_dart_multilang_button/simple_dart_multilang_button.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_link/simple_dart_multilang_link.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class ButtonsView extends View {
  ButtonsView() {
    fullSize();
    id = 'buttons';
    caption = 'Buttons';
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    vertical = true;
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkButtons
        ..addContent([
          MultilangButton()..langKey = lkSimpleButton,
          MultilangButton()
            ..langKey = lkDisabledButton
            ..disabled = true,
          MultilangButton()
            ..langKey = lkActiveButton
            ..active = true,
          MultilangButton()
            ..langKey = lkDisabledActiveButton
            ..disabled = true
            ..active = true,
        ])
        ..width = '300px',
      MultilangHeadedPanel()
        ..langKey = lkLinks
        ..addContent([
          MultilangLink()
            ..langKey = lkSimpleLink
            ..href = 'https://google.com',
          MultilangLink()
            ..langKey = lkDisabledLink
            ..href = 'https://google.com'
            ..disabled = true,
          MultilangLink()
            ..langKey = lkActiveLink
            ..href = 'https://google.com'
            ..active = true,
          MultilangLink()
            ..langKey = lkDisabledActiveLink
            ..href = 'https://google.com'
            ..disabled = true
            ..active = true,
        ])
        ..width = '300px',
    ]);
  }
}
