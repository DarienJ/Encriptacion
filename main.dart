import 'dart:io';

void main(List<String> args) {
  if (args[0] == "e") {
    //aqui se encripta

    String cadenaEncriptada = "";
    new File(args[1]).readAsString().then((String contents) {
      List<String> letras = contents.split('');

      var letra_A = 'ﺍ';
      var letra_B = 'ﺏ';
      var letra_C = 'ﺝ';
      var letra_D = 'ﺩ';
      var letra_E = 'ﻩ';
      var letra_F = 'ﻭ';
      var letra_G = 'ﺯ';
      var letra_H = 'ﺡ';
      var letra_I = 'ﻁ';
      var letra_J = 'ﻱ';
      var letra_K = 'ﻙ';
      var letra_L = 'ﻝ';
      var letra_M = 'ﻡ';
      var letra_N = 'ﻥ';
      var letra_NN = 'ﺱ';
      var letra_O = 'ﻉ';
      var letra_P = 'ﻑ';
      var letra_Q = 'ﺹ';
      var letra_R = 'ﻕ';
      var letra_S = 'ﺭ';
      var letra_T = 'ﺵ';
      var letra_U = 'ﺕ';
      var letra_V = 'ﺙ';
      var letra_W = 'ﺥ';
      var letra_X = 'ﺫ';
      var letra_Y = 'ﺽ';
      var letra_Z = 'ﻅ';

      for (var i = 0; i < letras.length; i++) {
        if (letras[i] == "A" ||
            letras[i] == "a" ||
            letras[i] == "á" ||
            letras[i] == "Á") {
          letras[i] = letra_A;
        } else if (letras[i] == "B" || letras[i] == "b") {
          letras[i] = letra_B;
        } else if (letras[i] == "C" || letras[i] == "c") {
          letras[i] = letra_C;
        } else if (letras[i] == "D" || letras[i] == "d") {
          letras[i] = letra_D;
        } else if (letras[i] == "E" ||
            letras[i] == "e" ||
            letras[i] == "é" ||
            letras[i] == "É") {
          letras[i] = letra_E;
        } else if (letras[i] == "F" || letras[i] == "f") {
          letras[i] = letra_F;
        } else if (letras[i] == "G" || letras[i] == "g") {
          letras[i] = letra_G;
        } else if (letras[i] == "H" || letras[i] == "h") {
          letras[i] = letra_H;
        } else if (letras[i] == "I" ||
            letras[i] == "i" ||
            letras[i] == "í" ||
            letras[i] == "Í") {
          letras[i] = letra_I;
        } else if (letras[i] == "J" || letras[i] == "j") {
          letras[i] = letra_J;
        } else if (letras[i] == "K" || letras[i] == "k") {
          letras[i] = letra_K;
        } else if (letras[i] == "L" || letras[i] == "l") {
          letras[i] = letra_L;
        } else if (letras[i] == "M" || letras[i] == "m") {
          letras[i] = letra_M;
        } else if (letras[i] == "N" || letras[i] == "n") {
          letras[i] = letra_N;
        } else if (letras[i] == "Ñ" || letras[i] == "ñ") {
          letras[i] = letra_NN;
        } else if (letras[i] == "O" ||
            letras[i] == "o" ||
            letras[i] == "ó" ||
            letras[i] == "Ó") {
          letras[i] = letra_O;
        } else if (letras[i] == "P" || letras[i] == "p") {
          letras[i] = letra_P;
        } else if (letras[i] == "Q" || letras[i] == "q") {
          letras[i] = letra_Q;
        } else if (letras[i] == "R" || letras[i] == "r") {
          letras[i] = letra_R;
        } else if (letras[i] == "S" || letras[i] == "s") {
          letras[i] = letra_S;
        } else if (letras[i] == "T" || letras[i] == "t") {
          letras[i] = letra_T;
        } else if (letras[i] == "U" ||
            letras[i] == "u" ||
            letras[i] == "ú" ||
            letras[i] == "Ú" ||
            letras[i] == "Ü" ||
            letras[i] == "ü") {
          letras[i] = letra_U;
        } else if (letras[i] == "V" || letras[i] == "v") {
          letras[i] = letra_V;
        } else if (letras[i] == "W" || letras[i] == "w") {
          letras[i] = letra_W;
        } else if (letras[i] == "X" || letras[i] == "x") {
          letras[i] = letra_X;
        } else if (letras[i] == "Y" || letras[i] == "y") {
          letras[i] = letra_Y;
        } else if (letras[i] == "Z" || letras[i] == "z") {
          letras[i] = letra_Z;
        }
      }

      for (var i = 0; i < letras.length; i++) {
        cadenaEncriptada += letras[i];
      }

      // print(cadenaEncriptada);

      new File(args[2]).writeAsString(cadenaEncriptada).then((File file) {
        print('El archivo ha sido encriptado');
      });
    });
  } else if (args[0] == "d") {
// Aqui se desencripta
    String cadenaEncriptada = "";
    new File(args[1]).readAsString().then((String contents) {
      List<String> letras = contents.split('');

      for (var i = 0; i < letras.length; i++) {
        if (letras[i] == 'ﺍ') {
          letras[i] = 'A';
        } else if (letras[i] == 'ﺏ') {
          letras[i] = 'B';
        } else if (letras[i] == 'ﺝ') {
          letras[i] = 'C';
        } else if (letras[i] == 'ﺩ') {
          letras[i] = 'D';
        } else if (letras[i] == 'ﻩ') {
          letras[i] = 'E';
        } else if (letras[i] == 'ﻭ') {
          letras[i] = 'F';
        } else if (letras[i] == 'ﺯ') {
          letras[i] = 'G';
        } else if (letras[i] == 'ﺡ') {
          letras[i] = 'H';
        } else if (letras[i] == 'ﻁ') {
          letras[i] = 'I';
        } else if (letras[i] == 'ﻱ') {
          letras[i] = 'J';
        } else if (letras[i] == 'ﻙ') {
          letras[i] = 'K';
        } else if (letras[i] == 'ﻝ') {
          letras[i] = 'L';
        } else if (letras[i] == 'ﻡ') {
          letras[i] = 'M';
        } else if (letras[i] == 'ﻥ') {
          letras[i] = 'N';
        } else if (letras[i] == 'ﺱ') {
          letras[i] = 'Ñ ';
        } else if (letras[i] == 'ﻉ') {
          letras[i] = 'O';
        } else if (letras[i] == 'ﻑ') {
          letras[i] = 'P';
        } else if (letras[i] == 'ﺹ') {
          letras[i] = 'Q';
        } else if (letras[i] == 'ﻕ') {
          letras[i] = 'R';
        } else if (letras[i] == 'ﺭ') {
          letras[i] = 'S';
        } else if (letras[i] == 'ﺵ') {
          letras[i] = 'T';
        } else if (letras[i] == 'ﺕ') {
          letras[i] = 'U';
        } else if (letras[i] == 'ﺙ') {
          letras[i] = 'V';
        } else if (letras[i] == 'ﺥ') {
          letras[i] = 'W';
        } else if (letras[i] == 'ﺫ') {
          letras[i] = 'X';
        } else if (letras[i] == 'ﺽ') {
          letras[i] = 'Y';
        } else if (letras[i] == 'ﻅ') {
          letras[i] = 'Z';
        }

        cadenaEncriptada += letras[i];
      }

      new File(args[2]).writeAsString(cadenaEncriptada).then((File file) {
        print('El archivo ya ha sido desencriptado');
      });
    });
  }
}
