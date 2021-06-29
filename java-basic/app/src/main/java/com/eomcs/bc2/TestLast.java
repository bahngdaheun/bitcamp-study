package com.eomcs.bc2;

public class TestLast {//형변환
  public static void main(String[] args) {
    int a = 234;
    double b = 78.9;
    String c = "1200";

    int x = (int) b;
    System.out.println(x+34);

    int y = Integer.parseInt(c);
    System.out.println(y+34);

    //String z = Integer.toString(a);//정수를 문자열로 변환
    String z = String.valueOf(a);//정수를 문자열로 변환
    System.out.println(z+34);//문자열과 정수 더하면 +가 단순 연결로 작용

  }//end
}//class END
