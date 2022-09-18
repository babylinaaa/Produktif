import 'dart:io';
void main(List<String> args) {
var a;
print('Apakah anda ingin menginstall aplikasi ini ?  Y/T');
a = stdin.readLineSync();
a == "y" ? print('Anda berhasil menginstall aplikasi') : a == "t" ?
print('Aborted') : print('Input yang anda masukkan salah');
}
