import 'dart:html';

void main() {
  Element idElement = querySelector('#an-id')!;
  Element classElement = querySelector('.a-class')!;
  List<Element> divElements = querySelectorAll('div');
  List<Element> textInputElements = querySelectorAll(
    'input[type="text"]',
  );
  List<Element> specialParagraphElements = querySelectorAll('#id p.class');
  var anchor = querySelector('#example') as AnchorElement;
  anchor.href = 'https://dart.dev';
}
