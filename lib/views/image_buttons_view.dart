import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_image_button/simple_dart_multilang_image_button.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class ImageButtonsView extends View {
  ImageButtonsView() {
    fullSize();
    id = 'buttons';
    caption = 'ImageButtons';
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkImageButtons
        ..addContent([
          MultilangImageButton()
            ..source = 'images/settings.svg'
            ..width = '16px'
            ..tooltipLangKey = lkSettings,
          MultilangImageButton()
            ..source = 'images/settings.svg'
            ..width = '32px'
            ..tooltipLangKey = lkSettings,
          MultilangImageButton()
            ..source = 'images/settings.svg'
            ..width = '64px'
            ..tooltipLangKey = lkSettings,
        ])
        ..width = '500px',
    ]);
  }
}
