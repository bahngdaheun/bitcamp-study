package com.eomcs.lang.ex04;

public class Test05 {
  public static void main(String[] args) {
    int[] a = new int[3];

    a[0] = 100;//아래에서 새로 배열 선언해서 주소를 갖고 있는 레퍼런스가 1개도 없어서 이 배열은 사용할 수 없다.
    //괜히 메모리만 차지하고 있다.=>쓰레기(Garbage): 공간만 차지하고 사용하지 못함
    //=>JVM 종료하면 JVM이 사용한 모든 메모리는 OS에 반납한다. 이때 가비지가 없어지는 것이다.
    //또는 JVM이 실행되는 동안 메모리가 부족하면 가비지를 찾아 제거한 후 그 메모리 공간을 재사용한다.
    //"가비지 수집기"가 가비지를 찾아 제거=Garbage Collector
    a[1] = 200;
    a[2] = 300;

    a = new int[5];
    System.out.println(a[0]);
    
  }
}
