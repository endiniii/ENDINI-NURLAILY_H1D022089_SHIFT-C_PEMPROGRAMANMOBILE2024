# Tugas Pertemuan 2

Nama: Endini Nurlaily
NIN: H1D022089
Shift Baru: C (Hari Rabu)

## Instruksi

1. **Fork dan Clone Repository**
   - Fork repository ini ke akun GitHub.
   - Clone repository ke mesin lokal dengan perintah:
     ```bash
     git clone https://github.com/endiniii/ENDINI-NURLAILY_H1D022089_SHIFT-C_PEMPROGRAMANMOBILE2024.git
     ```

2. **Install Dependencies**
   - Navigasikan ke direktori proyek:
     ```bash
     cd ENDINI-NURLAILY_H1D022089_SHIFT-C_PEMPROGRAMANMOBILE2024
     ```
   - Jalankan perintah berikut untuk menginstal dependencies:
     ```bash
     flutter pub get
     ```

3. **Implementasi Form**
   - Buat tampilan form yang berisi `nama`, `NIM`, dan `shift baru` pada file `ui/form_data.dart`.
   - Buat tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`.

## Penjelasan Proses Passing Data

- **Form Data Input (ui/form_data.dart)**
  - Pengguna mengisi form dengan `nama`, `NIM`, dan `shift baru`.
  - Ketika tombol "Submit" ditekan, data dari form akan dikumpulkan dan dikirim ke tampilan hasil menggunakan `Navigator.push`.
## Screenshot

### Form Input
![Lampiran Form](assets/images/form.png)

### Hasil Input
![Lampiran Tampilan](assets/images/tampilan.png)
