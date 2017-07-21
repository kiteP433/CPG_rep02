void fillColor(String mode) {

  if (mode == null) {
    fill(0);
  }

  if (mode.equals("red") == true) {
    fill(255, 0, 0);
  } else if (mode.equals("green") == true) {
    fill(0, 255, 0);
  } else if (mode.equals("blue") == true) {
    fill(0, 0, 255);
  } else if (mode.equals("silver") == true) {
    fill(192, 192, 192);
  } else if (mode.equals("white") == true) {
    fill(255);
  } else if (mode.equals("black") == true) {
    fill(0);
  } else if (mode.equals("rob_c1") == true) {
    fill(175, 175, 150);
  } else if (mode.equals("rob_c2") == true) {
    fill(160, 155, 130);
  } else if (mode.equals("rob_c3") == true) {
    fill(190, 190, 170);
  } else if (mode.equals("rob_c4") == true) {
    fill(170, 170, 170);
  } else if (mode.equals("rob_c5") == true) {
    fill(145, 140, 115);
  } else if (mode.equals("rob_c6") == true) {
    fill(145, 140, 120);
  } else if (mode.equals("rob_c7") == true) {
    fill(130, 125, 100);
  } else if (mode.equals("rob_c8") == true) {
    fill(120, 115, 85);
  } else if (mode.equals("rob_c9") == true) {
    fill(55, 50, 45);
  } else if (mode.equals("rob_c10") == true) {
    fill(70, 65, 60);
  } else if (mode.equals("rob_c11") == true) {
    fill(170, 165, 145);
  } else {
    fill(255);
  }
}

