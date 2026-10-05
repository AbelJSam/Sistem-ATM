import 'dart:ffi';
import 'dart:io';

void main() {
    List<Map<String, String>> saldoatm = [];

    int saldoo;

    bool atm = true;

    while (atm == true) {
    print("\n====================================");
    print("         ATM BANK ABEL");
    print("====================================");
    print("1. Cek Saldo");
    print("2. Setor Tunai");
    print("3. Tarik Tunai");
      print("4. Exit");
    print("====================================");
    print("    ");

    stdout.write("Pilih Menu (1/2/3/4) :   ");

    String? input = stdin.readLineSync();
    int? pilihan = int.tryParse(input ?? "");

    switch	(pilihan) {

        case 1:
        print("=========== SALDO SAAT INI ==========");
        if (saldoatm.isEmpty) {
            print("SALDO ANDA 0");
        } else {
            for (int i = 0; i < saldoatm.length; i++) {
                print(
                    "${saldoatm[i]["Saldo"]}"
                );
            }
        }
//============================================================
        case 2:
        stdout.write("Masukan Saldo : ");
        String saldo = stdin.readLineSync() ?? "";

            saldoatm.add({
                "Saldo": saldo.toUpperCase()
            });


        break;
//============================================================
        case 3:
        stdout.write("Masukan Nominal");

//============================================================
        case 4:
        atm = false;

        print("\nProgram selesai.");
        break;

      // ==========================================
      // PILIHAN TIDAK VALID
      // ==========================================
      default:
        print("\nPilihan menu tidak tersedia.");
    }

   }
}