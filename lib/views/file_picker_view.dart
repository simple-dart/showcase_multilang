import 'package:simple_dart_multilang_file_picker/simple_dart_multilang_file_picker.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class FileChooserView extends View {
  FileChooserView() {
    vertical = true;
    fullSize();
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    id = 'file_chooser';
    caption = 'FileChooser';
    addAll([
      MultilangHeadedPanel()
        ..langKey = lkFileChooser
        ..addContent([MultilangFilePicker()..langKey = 'Caption'])
        ..width = '300px'
    ]);
  }
}
