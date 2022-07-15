String sample =
    "z89n254723ia902fniw25onf29sf43vr8jk271bf78d1b827bdb38bd384fv76v6";

encrypt(String password, String encryptionKey) {
  List output = [];
  List input = password.split("");
  for (String letter in input) {
    if (input.indexOf(letter) < 63) {
      switch (letter) {
        case ('a'):
          output.add(
              encryptionKey[0] + "z" + encryptionKey[25] + encryptionKey[63]);
          break;
        case ('b'):
          output.add(
              encryptionKey[1] + "y" + encryptionKey[24] + encryptionKey[62]);
          break;
        case ('c'):
          output.add(
              encryptionKey[2] + 'x' + encryptionKey[23] + encryptionKey[61]);
          break;
        case ('d'):
          output.add(
              encryptionKey[3] + 'w' + encryptionKey[22] + encryptionKey[60]);
          break;
        case ('e'):
          output.add(
              encryptionKey[4] + 'v' + encryptionKey[21] + encryptionKey[59]);
          break;
        case ('f'):
          output.add(
              encryptionKey[5] + 'u' + encryptionKey[20] + encryptionKey[58]);
          break;
        case ('g'):
          output.add(
              encryptionKey[6] + 't' + encryptionKey[19] + encryptionKey[57]);
          break;
        case ('h'):
          output.add(
              encryptionKey[7] + 's' + encryptionKey[18] + encryptionKey[56]);
          break;
        case ('i'):
          output.add(
              encryptionKey[8] + 'r' + encryptionKey[17] + encryptionKey[55]);
          break;
        case ('j'):
          output.add(
              encryptionKey[9] + '1' + encryptionKey[16] + encryptionKey[54]);
          break;
        case ('k'):
          output.add(
              encryptionKey[10] + 'p' + encryptionKey[15] + encryptionKey[53]);
          break;
        case ('l'):
          output.add(
              encryptionKey[11] + 'o' + encryptionKey[14] + encryptionKey[52]);
          break;
        case ('m'):
          output.add(
              encryptionKey[12] + 'n' + encryptionKey[13] + encryptionKey[51]);
          break;
        case ('n'):
          output.add(
              encryptionKey[13] + 'm' + encryptionKey[12] + encryptionKey[50]);
          break;
        case ('o'):
          output.add(
              encryptionKey[14] + 'l' + encryptionKey[11] + encryptionKey[49]);
          break;
        case ('p'):
          output.add(
              encryptionKey[15] + 'k' + encryptionKey[10] + encryptionKey[48]);
          break;
        case ('q'):
          output.add(
              encryptionKey[16] + 'j' + encryptionKey[9] + encryptionKey[47]);
          break;
        case ('r'):
          output.add(
              encryptionKey[17] + 'i' + encryptionKey[8] + encryptionKey[46]);
          break;
        case ('s'):
          output.add(
              encryptionKey[18] + 'h' + encryptionKey[7] + encryptionKey[45]);
          break;
        case ('t'):
          output.add(
              encryptionKey[19] + 'g' + encryptionKey[6] + encryptionKey[44]);
          break;
        case ('u'):
          output.add(
              encryptionKey[20] + 'f' + encryptionKey[5] + encryptionKey[43]);
          break;
        case ('v'):
          output.add(
              encryptionKey[21] + 'e' + encryptionKey[4] + encryptionKey[42]);
          break;
        case ('w'):
          output.add(
              encryptionKey[22] + 'd' + encryptionKey[3] + encryptionKey[41]);
          break;
        case ('x'):
          output.add(
              encryptionKey[23] + 'c' + encryptionKey[2] + encryptionKey[40]);
          break;
        case ('y'):
          output.add(
              encryptionKey[24] + 'b' + encryptionKey[1] + encryptionKey[39]);
          break;
        case ('z'):
          output.add(
              encryptionKey[25] + 'z' + encryptionKey[0] + encryptionKey[38]);
          break;
        case ('@'):
          output.add(
              encryptionKey[26] + '!' + encryptionKey[31] + encryptionKey[37]);
          break;
        case ('0'):
          output.add(
              encryptionKey[27] + '5' + encryptionKey[31] + encryptionKey[36]);
          break;
        case ('1'):
          output.add(
              encryptionKey[28] + '4' + encryptionKey[31] + encryptionKey[35]);
          break;
        case ('2'):
          output.add(
              encryptionKey[29] + '3' + encryptionKey[31] + encryptionKey[34]);
          break;
        case ('3'):
          output.add(
              encryptionKey[30] + '2' + encryptionKey[31] + encryptionKey[33]);
          break;
        case ('4'):
          output.add(
              encryptionKey[31] + '1' + encryptionKey[31] + encryptionKey[32]);
          break;
        case ('5'):
          output.add(
              encryptionKey[32] + '0' + encryptionKey[31] + encryptionKey[31]);
          break;
        case ('6'):
          output.add(
              encryptionKey[33] + '6' + encryptionKey[31] + encryptionKey[30]);
          break;
        case ('7'):
          output.add(
              encryptionKey[34] + '7' + encryptionKey[31] + encryptionKey[29]);
          break;
        case ('8'):
          output.add(
              encryptionKey[35] + '8' + encryptionKey[31] + encryptionKey[28]);
          break;
        case ('9'):
          output.add(
              encryptionKey[36] + '9' + encryptionKey[31] + encryptionKey[27]);
          break;

        case (' '):
          output.add(
              encryptionKey[37] + '@' + encryptionKey[31] + encryptionKey[26]);
          break;
      }
    }
  }

  return output.join();
}
