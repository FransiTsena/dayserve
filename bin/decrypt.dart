String sample =
    "z89n254723ia902fniw25onf29sf43vr8jk271bf78d1b827bdb38bd384fv76v6";

decrypt(String password, String encryptionKey) {
  List output = [];
  List input = [];

  final divisionIndex = 4;

  for (int i = 0; i < password.length; i++) {
    if (i % divisionIndex == 0) {
      final tempString = password.substring(i, i + divisionIndex);
      input.add(tempString);
    }
  }

  print(input);
  for (String letter in input) {
    if (encryptionKey[0] + "z" + encryptionKey[0] + encryptionKey[63] ==
        letter) {
      output.add("a");
    }

    if (encryptionKey[1] + "y" + encryptionKey[1] + encryptionKey[62] ==
        letter) {
      output.add("b");
    }

    if (encryptionKey[2] + 'x' + encryptionKey[2] + encryptionKey[61] ==
        letter) {
      output.add("c");
    }

    if (encryptionKey[3] + 'w' + encryptionKey[3] + encryptionKey[60] ==
        letter) {
      output.add("d");
    }

    if (encryptionKey[4] + 'v' + encryptionKey[4] + encryptionKey[59] ==
        letter) {
      output.add("e");
    }

    if (encryptionKey[5] + 'u' + encryptionKey[5] + encryptionKey[58] ==
        letter) {
      output.add("f");
    }

    if (encryptionKey[6] + 't' + encryptionKey[6] + encryptionKey[57] ==
        letter) {
      output.add("g");
    }

    if (encryptionKey[7] + 's' + encryptionKey[7] + encryptionKey[56] ==
        letter) {
      output.add("h");
    }

    if (encryptionKey[8] + 'r' + encryptionKey[8] + encryptionKey[55] ==
        letter) {
      output.add("i");
    }

    if (encryptionKey[9] + 'q' + encryptionKey[9] + encryptionKey[54] ==
        letter) {
      output.add("j");
    }

    if (encryptionKey[10] + 'p' + encryptionKey[10] + encryptionKey[53] ==
        letter) {
      output.add("k");
    }

    if (encryptionKey[11] + 'o' + encryptionKey[11] + encryptionKey[52] ==
        letter) {
      output.add("l");
    }

    if (encryptionKey[12] + 'n' + encryptionKey[12] + encryptionKey[51] ==
        letter) {
      output.add("m");
    }

    if (encryptionKey[13] + 'm' + encryptionKey[13] + encryptionKey[50] ==
        letter) {
      output.add("n");
    }

    if (encryptionKey[14] + 'l' + encryptionKey[14] + encryptionKey[49] ==
        letter) {
      output.add("o");
    }

    if (encryptionKey[15] + 'k' + encryptionKey[15] + encryptionKey[48] ==
        letter) {
      output.add("p");
    }

    if (encryptionKey[16] + 'j' + encryptionKey[16] + encryptionKey[47] ==
        letter) {
      output.add("q");
    }

    if (encryptionKey[17] + 'i' + encryptionKey[17] + encryptionKey[46] ==
        letter) {
      output.add("r");
    }

    if (encryptionKey[18] + 'h' + encryptionKey[18] + encryptionKey[45] ==
        letter) {
      output.add("s");
    }

    if (encryptionKey[19] + 'g' + encryptionKey[19] + encryptionKey[44] ==
        letter) {
      output.add("t");
    }

    if (encryptionKey[20] + 'f' + encryptionKey[20] + encryptionKey[43] ==
        letter) {
      output.add("u");
    }

    if (encryptionKey[21] + 'e' + encryptionKey[21] + encryptionKey[42] ==
        letter) {
      output.add("v");
    }

    if (encryptionKey[22] + 'd' + encryptionKey[22] + encryptionKey[41] ==
        letter) {
      output.add("w");
    }

    if (encryptionKey[23] + 'c' + encryptionKey[23] + encryptionKey[40] ==
        letter) {
      output.add("x");
    }

    if (encryptionKey[24] + 'b' + encryptionKey[24] + encryptionKey[39] ==
        letter) {
      output.add("y");
    }

    if (encryptionKey[25] + 'a' + encryptionKey[25] + encryptionKey[38] ==
        letter) {
      output.add("z");
    }

    if (encryptionKey[26] + '!' + encryptionKey[31] + encryptionKey[37] ==
        letter) {
      output.add("@");
    }

    if (encryptionKey[27] + '5' + encryptionKey[31] + encryptionKey[36] ==
        letter) {
      output.add("0");
    }

    if (encryptionKey[28] + '4' + encryptionKey[31] + encryptionKey[35] ==
        letter) {
      output.add("1");
    }

    if (encryptionKey[29] + '3' + encryptionKey[31] + encryptionKey[34] ==
        letter) {
      output.add("2");
    }

    if (encryptionKey[30] + '2' + encryptionKey[31] + encryptionKey[33] ==
        letter) {
      output.add("3");
    }

    if (encryptionKey[31] + '1' + encryptionKey[31] + encryptionKey[32] ==
        letter) {
      output.add("4");
    }

    if (encryptionKey[32] + '0' + encryptionKey[31] + encryptionKey[31] ==
        letter) {
      output.add("5");
    } else if (encryptionKey[33] +
            '6' +
            encryptionKey[31] +
            encryptionKey[30] ==
        letter) {
      output.add("6");
    } else if (encryptionKey[34] +
            '7' +
            encryptionKey[31] +
            encryptionKey[29] ==
        letter) {
      output.add("7");
    } else if (encryptionKey[35] +
            '6' +
            encryptionKey[31] +
            encryptionKey[28] ==
        letter) {
      output.add("8");
    } else if (encryptionKey[36] +
            '9' +
            encryptionKey[31] +
            encryptionKey[27] ==
        letter) {
      output.add("9");
    } else if (encryptionKey[37] +
            '@' +
            encryptionKey[31] +
            encryptionKey[26] ==
        letter) {
      output.add(" ");
    }
  }

  return output.join();
}
