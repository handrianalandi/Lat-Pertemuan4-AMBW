import 'dart:io';

//asumsi 2 digit ditulis angka belakangnya 10=0, 11=1, 12=2, 13=3, dst.
//c14190231
void draw(int n) {
  if (n % 2 != 0) {
    int cstar = (n / 2).floor();
    int cnum = 1;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < cstar; j++) {
        stdout.write("*");
      }
      for (int j = 0; j < cnum; j++) {
        if (j % 2 != 0) {
          stdout.write(" ");
        } else {
          if (i + 1 == 9) {
            stdout.write("9");
          } else {
            stdout.write((i + 1) % 9);
          }
        }
      }
      for (int j = 0; j < cstar; j++) {
        stdout.write("*");
      }
      if (i < (n / 2).floor()) {
        cstar--;
        cnum += 2;
      } else {
        cstar++;
        cnum -= 2;
      }
      print("");
    }
  } else {
    int kiri = 1, kanan = n;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n - i; j++) {
        if (kiri % 9 == 0) {
          stdout.write("9");
        } else {
          stdout.write(kiri % 9);
        }
        kiri++;
        if (kiri > n) {
          kiri = 1;
        }
      }
      for (int j = 0; j < i * 2; j++) {
        stdout.write(" ");
      }
      for (int j = 0; j < n - i; j++) {
        if (kanan % 9 == 0) {
          stdout.write("9");
        } else {
          stdout.write(kanan % 9);
        }
        kanan--;
        if (kanan < 1) {
          kanan = n;
        }
      }
      print("");
    }
  }
}

void main(List<String> arguments) {
  stdout.write("n: ");
  String? n = stdin.readLineSync();
  draw(int.parse(n!));
}
