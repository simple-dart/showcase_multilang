import 'package:simple_dart_multilang_button/simple_dart_multilang_button.dart';
import 'package:simple_dart_multilang_headed_dialog/simple_dart_multilang_headed_dialog.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';

import '../translations.dart';

class DialogView extends View {
  DialogExample dialogExample = DialogExample();

  DialogView() {
    id = 'dialogs';
    caption = 'Dialogs';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkDialogExample
        ..addContent([
          MultilangButton()
            ..langKey = lkOpenDialog
            ..onClick.listen((event) {
              dialogExample.showDialog();
            }),
        ])
        ..width = '300px',
    ]);
  }

  @override
  void reRender() {
    super.reRender();
    dialogExample.reRender();
  }
}

class DialogExample extends MultilangHeadedDialog<String> {
  final inputField = TextField();

  DialogExample() : super() {
    spacing = '5px';
    langKey = lkDialogExample;
    bodyPanel
      ..spacing = '5px'
      ..addAll([MultilangLabel()..langKey = lkInputValue, inputField]);
  }

  @override
  void beforeShow() {
    inputField
      ..value = ''
      ..focus();
  }
}
