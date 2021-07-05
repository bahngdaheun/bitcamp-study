package net.common.bit;

import java.util.Scanner;

public class Work05Hotel3 {
  private int floor;
  private int room;
  private String[][] name = new String[6][5];
  private String title = "렐루호텔";

  Scanner sc = new Scanner(System.in);
  public void process() {
    map();
    int sel = 0;
    while (true) {
      System.out.print("\n1. 입실    2. 퇴실    3. map    4. list    9. 종료 >>> ");
      sel = Integer.parseInt(sc.nextLine());

      switch (sel) {
        case 1:
          checkIn();
          break;
        case 2:
          checkOut();
          break;
        case 3:
          map();
          break;
        case 4:
          list();
          break;
        case 9:
          System.out.println("\n"+title+"호텔 예약 프로그램을 종료합니다.");
          return;
      }
    }
  }

  public void checkIn() {
    System.out.print(">몇 층에 투숙? ");
    floor = Integer.parseInt(sc.nextLine());
    if (floor < 1 || floor > 6) {
      System.out.println("1층 ~ 6층 중에 입력해 주세요.");
      return;
    } 

    System.out.print(">몇 호에 투숙? ");
    room = Integer.parseInt(sc.nextLine());
    if (room <1 || room > 5) {
      System.out.println("1호 ~ 5호 중에 입력해 주세요.");
      return;
    }

    System.out.print(">투숙객 이름? ");
    String guest = sc.nextLine();
    if (this.name[floor - 1][room - 1] != null) {
      System.out.println("이미 예약된 객실입니다.");
    } else {
      this.name[floor - 1][room - 1] = guest;
      System.out.println("예약에 성공했습니다.");
    } return;
  }

  public void checkOut() {
    System.out.print("몇 층에 묵으셨나요? ");
    floor = Integer.parseInt(sc.nextLine());
    System.out.print("몇 호에 묵으셨나요? ");
    room = Integer.parseInt(sc.nextLine());
    if (this.name[floor - 1][room - 1] != null) {
      System.out.println("퇴실을 완료했습니다.");
      this.name[floor - 1][room - 1] = null;
    } else {
      System.out.println("객실을 잘못 선택하셨습니다.");
    } return;
  }

  public void map() {
    System.out.println("\n\t[ " + title + " 투숙 상태 ]\n");
    for(int i = 0; i < 6; i++) {
      for(int j = 0; j < 5; j++) {
        System.out.print((i + 1) + "0" + (j + 1) + "호\t");
      }
      System.out.println();

      for(int k = 0; k < 5; k++) {
        if(this.name[i][k] == null) {
          System.out.print("\t");
          continue;
        }
        System.out.print(this.name[i][k] + "\t");
      }
      System.out.println("\n---------------------------------------");
    }
  }

  public void list() {
    System.out.println("\n\t [ " + title + " 투숙 상태 ]\n");
    for(int i = 0; i < 6; i++) {
      for(int j = 0; j < 5; j++) {
        if(this.name[i][j] == null) {
          System.out.print((i + 1) + "0" + (j + 1) + "호 □\t");
        } else {
          System.out.println((i + 1) + "0" + (j + 1) + "호 ■ " + this.name[i][j] + "\t");
        }
      }
      System.out.println();
    }
  }

  public static void main(String[] args) {
    System.out.println("7월 1일 오후 8:10");
    Work05Hotel3 wh = new Work05Hotel3();
    wh.process();
  }
}
