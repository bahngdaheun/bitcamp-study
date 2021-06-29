package com.eomcs.bc2;

public class SJPracticeUser {
  public static void main(String[] args) {
    SJPractice sjp = new SJPractice();

    String id = "kim";
    int first = 85;
    int second = 55;
    int total = sjp.getTotal(id, first, second);
    double avg = sjp.getMean(total);
    char grade = sjp.getGrade(avg);
    String info = sjp.result(avg, first, second);

    System.out.println("합계=" + total);
    System.out.println("평균=" + avg);
    System.out.println("학점=" + grade);
    System.out.println("결과=" + info);
  }
}
