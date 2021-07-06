package com.eomcs.bc2;

import java.util.Scanner;

public class Test {

  public static void main(String[] args) {
    Scanner sc=new Scanner(System.in);
    String msg="";

    System.out.print("사번 입력>>> ");
    int a=Integer.parseInt(sc.nextLine());


    System.out.print("이름 입력>>> ");
    String b=sc.nextLine();

    System.out.print("부서 입력>>> ");
    String c=sc.nextLine();

    msg="insert into insa(sabun, name, buse) values("+a+", '"+b+"', '"+c+"')";
    //데이터베이스와 연결할 것이므로 SQL과 동일하게 문자나 문자열은 ' '가 찍히게 해야 함
    System.out.println(msg);
    sc.close();
  }
}
