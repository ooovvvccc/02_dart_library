import 'dart:io';
import 'dart:convert';
void main() async {
  var config = File('config.txt');
  var stringContents = await config.readAsString();
  print('The file is ${stringContents.length} characters long.');
  var lines = await config.readAsLines();
  print('The file is ${lines.length} lines long.');
  config = File('config.txt');
  var contents = await config.readAsBytes();
  print('The file is ${contents.length} bytes long.');
  config = File('config.txt');
  try {
    var contents = await config.readAsString();
    print(contents);
  } catch (e) {
    print(e);
  }
  config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();
  var lines1= utf8.decoder.bind(inputStream).transform(const LineSplitter());
  try {
    await for (final line in lines1) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
  var logFile = File('log.txt');
var sink = logFile.openWrite();
sink.write('FILE ACCESSED ${DateTime.now()}\n');
await sink.flush();
await sink.close();
sink = logFile.openWrite(mode: FileMode.append);
var dir = Directory('tmp');

  try {
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList) {
      if (f is File) {
        print('Found file ${f.path}');
      } else if (f is Directory) {
        print('Found dir ${f.path}');
      }
    }
  } catch (e) {
    print(e.toString());
  }
}