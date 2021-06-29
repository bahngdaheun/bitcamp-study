package com.eomcs.bc2;

public class Lottery {

  public static int[] input() {
    int[] su = new int[6];
    su[0] = 3;  su[1] = 5;  su[2] = 6;
    su[3] = 2;  su[4] = 9;  su[5] = 3;
    return su;
  }

  public static void output(int[] LT) {
    for(int i=0;i<LT.length;i++) {
      System.out.print(LT[i]+"\t");
    }
    System.out.println();
  }

  public int inputHap() {
    int hap=0;
    int[] su = new int[6];
    su[0] = 3;  su[1] = 5;  su[2] = 6;
    su[3] = 2;  su[4] = 9;  su[5] = 3;
    for(int i=0; i<su.length; i++) {
      hap+=su[i];
    }
    return hap;
  }

}
