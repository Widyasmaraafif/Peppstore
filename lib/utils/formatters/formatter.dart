import 'package:intl/intl.dart';

class MyFormatter {
  static formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
  // Hilangkan spasi atau karakter tidak diperlukan
  String cleanedNumber = phoneNumber.replaceAll(RegExp(r'\s+'), '');

  // Pastikan nomor dimulai dengan kode negara (+62)
  if (cleanedNumber.startsWith('+62')) {
    return '+62 ${cleanedNumber.substring(3, 6)} ${cleanedNumber.substring(6, 10)} ${cleanedNumber.substring(10)}';
  } 
  // Jika nomor lokal (tidak ada +62), tambahkan awalan
  else if (cleanedNumber.startsWith('0')) {
    return '+62 ${cleanedNumber.substring(1, 4)} ${cleanedNumber.substring(4, 8)} ${cleanedNumber.substring(8)}';
  } 
  // Jika tidak sesuai format, kembalikan nomor asli
  else {
    return phoneNumber;
  }
}


}
