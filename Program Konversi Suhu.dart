import 'dart:io';

void main() {
  print("Program Konversi Suhu");
  print("Pilih mode konversi:");
  print("1. Celsius ke Fahrenheit");
  print("2. Fahrenheit ke Celsius");

  // Ambil pilihan dari user
  stdout.write("Masukkan pilihan (1/2): ");
  String? choice = stdin.readLineSync();

  if (choice == '1') {
    // Konversi dari Celsius ke Fahrenheit
    stdout.write("Masukkan suhu dalam Celsius: ");
    String? inputCelsius = stdin.readLineSync();
    double celsius = double.parse(inputCelsius!);
    double fahrenheit = celsiusToFahrenheit(celsius);
    print("$celsius°C = $fahrenheit°F");
  } else if (choice == '2') {
    // Konversi dari Fahrenheit ke Celsius
    stdout.write("Masukkan suhu dalam Fahrenheit: ");
    String? inputFahrenheit = stdin.readLineSync();
    double fahrenheit = double.parse(inputFahrenheit!);
    double celsius = fahrenheitToCelsius(fahrenheit);
    print("$fahrenheit°F = $celsius°C");
  } else {
    print("Pilihan tidak valid.");
  }
}

// Fungsi untuk mengkonversi Celsius ke Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Fungsi untuk mengkonversi Fahrenheit ke Celsius
double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}
