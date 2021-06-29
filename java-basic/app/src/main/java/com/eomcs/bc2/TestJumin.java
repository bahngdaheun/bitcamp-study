package com.eomcs.bc2;

public class TestJumin {

  public static void main(String[] args) {
    //java API 참고
    //java.lang 패키지 String 클래스의 메소드 char charAt(int)
    String min = "871024-2541965";
    //if문 써서 주민번호 뒤의 첫자리로 남자, 여자 추출할 수 있게
    //String 문자열은 0번째부터 시작
    if (min.charAt(7)=='1') {
      System.out.println("남자입니다");
    } else if (min.charAt(7)=='2') {
      System.out.println("여자입니다");
    } else if (min.charAt(7)=='3') {
      System.out.println("남자입니다");
    } else if (min.charAt(7)=='4') {
      System.out.println("여자입니다");
    } else {
      System.out.println("다시 입력해 주세요");
    }
  }
}