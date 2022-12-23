import 'package:simple_dart_multilang_button/simple_dart_multilang_button.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class ErrorsView extends View {
  ErrorsView() {
    id = 'errors';
    caption = 'Errors';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkErrors
        ..addContent([
          MultilangButton()
            ..langKey = lkShowError
            ..onClick.listen((event) => showError(lkError)),
          MultilangButton()
            ..langKey = lkShowFatalError
            ..onClick.listen((event) => showFatalError(lkError))
        ])
        ..width = '300px',
    ]);
  }
}
