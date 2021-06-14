package com.eomcs.lang.ex04;

public class Test04 {
  public static void main(String[] args) {
    // 배열 메모리의 시작 주소를 저장할 레퍼런스 선언
    int[] a;

    // 레퍼런스 변수에 배열 메모리의 주소를 준다.
    a = new int[3];

    a[0] = 100;
    a[1] = 200;
    a[2] = 300;
    //a[3] = 400;//변수가 3개인데 4번째를 넣으니까 실행 오류 발생

    System.out.println(a[0]);
    System.out.println(a[1]);
    System.out.println(a[2]);
    //System.out.println(a[3]);//변수가 3개인데 4번째를 넣으니까 실행 오류 발생

    int[] b;
   // b = 200;//b는 주소 넣어야 하는데 거기에 정수를 넣으면 컴파일 오류 발생
    b = a;
    System.out.println(b[1]);
    
  }
}
