package com.eomcs.lang.ex05;

//# 비트 연산자 : 응용 II(Exam0460 참고)
//
public class Test01 {
  public static void main(String[] args) {
    int lang2 = 0;

    // 32비트에서 뒤에 8비트를 사용하여 8개의 true/false 값을 저장할 수 있다.
    // 8 비트에서 각 언어에 값을 저장할 비트를 다음과 같다고 가정하자.
    // 00000000
    // ||||||||- css
    // |||||||- html
    // ||||||- php
    // |||||- python
    // ||||- javascript
    // |||- java
    // ||- c++
    // |- c

    final int LANG_C      = 0b10000000;  // 0x80
    final int LANG_CPP    = 0b01000000;  // 0x40
    final int LANG_JAVA   = 0b00100000;  // 0x20
    final int LANG_JS     = 0b00010000;  // 0x10
    final int LANG_PYTHON = 0b00001000;  // 0x08
    final int LANG_PHP    = 0b00000100;  // 0x04
    final int LANG_HTML   = 0b00000010;  // 0x02
    final int LANG_CSS    = 0b00000001;  // 0x01

    lang2 |= LANG_C; //상수를 쓰면 주석을 안 달아도 됨, 코드에 힌트가 다 있음
    lang2 |= LANG_JAVA; //lang2의 값과 0x20을 | 연산한 값을 다시 lang2에 넣어라
    lang2 |= LANG_PYTHON;
    lang2 |= LANG_HTML;

    System.out.println(Integer.toBinaryString(lang2));//int 변수를 2진수로 출력하란 의미

    lang2 = LANG_C | LANG_JAVA | LANG_PYTHON | LANG_HTML;//한 번에 쓸 수 있음
    System.out.println(Integer.toBinaryString(lang2));

    lang2 = lang2 - LANG_JAVA;//기존 값에서 빼면 해당 값만 0이 됨
    System.out.println(Integer.toBinaryString(lang2));//맨 앞이 0이 되면 출력 안 함

  }
}
