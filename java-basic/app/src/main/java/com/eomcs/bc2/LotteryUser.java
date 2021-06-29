package com.eomcs.bc2;

public class LotteryUser {

  public static void main(String[] args) {
    int[] ret = Lottery.input();
    Lottery.output(ret);
    Lottery LG = new Lottery();
    int value=LG.inputHap();
    System.out.println("숫자 합계=" + value);
    System.out.println("숫자 합계=" + LG.inputHap());
  }
}
