import 'dart:io';

void main(List<String> args) {
  String nama = '', peran = '';
  var ulangiNama = true, ulangiPeran = true;

  while (ulangiNama) {
    stdout.write('Masukkan nama anda : ');
    nama = stdin.readLineSync()!;

    nama.isEmpty
        ? print('\nNama Harus diisi terlebih dahulu\n')
        : ulangiNama = false;
  }

  print('Hai $nama! Pilih peranmu untuk memulai game!');
  while (ulangiPeran) {
    print('\nPeran : Penyihir, Guard, Werewolf');
    stdout.write('\nMasukkan peran anda : ');
    peran = stdin.readLineSync()!;

    ulangiPeran = false;

    switch (peran.toLowerCase()) {
      case '':
        print('\nPeran Harus diisi terlebih dahulu');
        ulangiPeran = true;
        break;
      case 'penyihir':
        print("Selamat datang di Dunia Werewolf, " + nama);
        print("Halo " +
            nama +
            " " +
            peran +
            ", kamu dapat melihat siapa yang menjadi werewolf");
        break;
      case 'guard':
        print("Selamat datang di Dunia Werewolf, " + nama);
        print("Halo " +
            nama +
            " " +
            peran +
            ",  kamu akan membantu melindungi temanmu dari serangan werewolf.");
        break;
      case 'werewolf':
        print("Selamat datang di Dunia Werewolf, " + nama);
        print("Halo " +
            nama +
            " " +
            peran +
            ", Kamu akan memakan mangsa setiap malam!");
        break;
      default:
        print(
            "\nRole Yang anda masukkan tidak ada! Silahkan isi role yang benar!");
        ulangiPeran = true;
        break;
    }
  }
}
