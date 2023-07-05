import 'dart:io';

class FileUtils {

FileUtils._internal();

static final FileUtils _instance = FileUtils._internal();

factory FileUtils () => _instance;

  Future<String> getSize(File? file) async {
    if (file == null) return '';
    
    int fileSize = await file.length();
        String size = "";

    double k = fileSize/1024.0;
    double m = ((fileSize/1024.0)/1024.0);
    double g = (((fileSize/1024.0)/1024.0)/1024.0);

   if ( g>1 ) {
      size = "${g.toStringAsFixed(2)} GB";
    } else if ( m>1 ) {
      size = "${m.toStringAsFixed(2)} MB";
    } else if ( k>1 ) {
      size = "${k.toStringAsFixed(2)} KB";
    } else {
      size = "${fileSize.toStringAsFixed(2)} Bytes";
    }
    return size;
  }

  
}