package com.eomcs.bc2;

public class SJPractice {

  public int getTotal(String name, int kor, int eng) {
    return(kor + eng);
  }

  public double getMean(int value) {
    double avg = (double) value/2;
    return avg;
  }
  public char getGrade(double data) {
    char grade = 'F';
    switch((int)data/10) {
      case 10:
      case 9: grade = 'A'; break;
      case 8: grade = 'B'; break;
      case 7: grade = 'C'; break;
      case 6: grade = 'D'; break;
      default:
        grade = 'F'; break;
    }
    return grade;
  }

  public String result(double data) {
    String msg = "합격 여부 안내문";
    if(data >= 70) {
      msg = "축 합격";
    } else {
      msg = "재시험";
    }
    return msg;
  }

  public String result(double data, int kor, int eng) {
    String msg = "합격 여부 안내문";
    if(data >= 70 && kor >= 60 && eng >= 60) {
      msg = "축 합격";
    } else {
      msg = "재시험";
    }
    return msg;
  }

}
