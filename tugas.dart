import 'dart:io';

void main() {
 
  stdout.write('Masukkan skor ujian (0-100): ');
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('\n ERROR: Input tidak boleh kosong!');
    return;
  }
  double? skor = double.tryParse(input);
  if (skor == null) {
    print('\n ERROR: Input harus berupa angka!');
    return;
  }
  if (skor < 0 || skor > 100) {
    print('\n ERROR: Skor harus antara 0 - 100!');
    return;
  }
  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = 'A';
  } else if (skor >= 70 && skor < 85) {
    grade = 'B';
  } else if (skor >= 60 && skor < 70) {
    grade = 'C';
  } else if (skor >= 50 && skor < 60) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  print('HASIL PENILAIAN');
  print('Skor Anda: $skor');
  print('Grade Anda: $grade');

  switch (grade) {
    case 'A':
      print('Excellent! Pertahankan prestasi Anda!');
      break;
    case 'B':
      print('Good! Tingkatkan lagi untuk mencapai yang terbaik!');
      break;
    case 'C':
      print('Cukup baik, butuh lebih banyak usaha!');
      break;
    case 'D':
      print('Perlu belajar lebih giat lagi!');
      break;
    case 'E':
      print('Silakan mengulang dan belajar lebih serius!');
      break;
    default:
      print('Grade tidak dikenali');
  }
}
String tentukanGradeDenganSwitch(double skor) {
  int kelompok = (skor ~/ 10); // 
  switch (kelompok) {
    case 10:
    case 9:
    case 8:
      return 'A';
    case 7:
      return 'B';
    case 6:
      return 'C';
    case 5:
      return 'D';
    default:
      return 'E';
  }
}