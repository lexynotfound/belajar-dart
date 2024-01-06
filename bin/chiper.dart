import 'dart:io';

String vigenereEncrypt(String text, String key) {
  String encryptedText = '';
  int textLength = text.length;
  int keyLength = key.length;

  for (int i = 0; i < textLength; i++) {
    var textChar = text.codeUnitAt(i);
    var keyChar = key.codeUnitAt(i % keyLength);

    var encryptedChar = ((textChar + keyChar) % 26) + 'A'.codeUnitAt(0);
    encryptedText += String.fromCharCode(encryptedChar);
  }

  return encryptedText;
}

String vigenereDecrypt(String text, String key) {
  String decryptedText = '';
  int textLength = text.length;
  int keyLength = key.length;

  for (int i = 0; i < textLength; i++) {
    var textChar = text.codeUnitAt(i);
    var keyChar = key.codeUnitAt(i % keyLength);

    var decryptedChar = ((textChar - keyChar + 26) % 26) + 'A'.codeUnitAt(0);
    decryptedText += String.fromCharCode(decryptedChar);
  }

  return decryptedText;
}

void main() {
  stdout.write("Enter the text: ");
  var inputText = (stdin.readLineSync() ?? '').toUpperCase();

  stdout.write("Enter the key: ");
  var inputKey = (stdin.readLineSync() ?? '').toUpperCase();

  var encryptedText = vigenereEncrypt(inputText, inputKey);
  print("Encrypted text: $encryptedText");

  stdout.write("Do you want to decrypt this text? (Y/N): ");
  var choice = (stdin.readLineSync() ?? '').toUpperCase();

  if (choice == 'Y') {
    var decryptedText = vigenereDecrypt(encryptedText, inputKey);
    print("Decrypted text: $decryptedText");
  } else {
    print("Thank you for using the Vigenère Cipher!");
  }
}
