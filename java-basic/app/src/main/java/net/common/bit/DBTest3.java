package net.common.bit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class DBTest3 {
  Connection cn = null;
  Statement st = null;
  ResultSet rs = null;
  Scanner sc = new Scanner(System.in);
  String sql = "쿼리문";

  public void dbConnect() {
    try {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      cn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "system", "1234");
      st = cn.createStatement();
      System.out.println("자바에서 데이터베이스 접근");

      while(true) {
        int sel = 0;
        System.out.print("1. 입력    2. 조회    3. 수정    4. 삭제 >> ");
        sel = Integer.parseInt(sc.nextLine());

        switch(sel) {
          case 1:
            dbInsert();
            break;
          case 2:
            dbSellectAll();
            break;
          case 3:
            dbUpdate();
            break;
          case 4:
            dbDelete();
            break;
        }
      }
    } catch (Exception ex) {
      System.out.println("error = " + ex);
    }
  }

  public void dbInsert() {
    try {
      System.out.print("코드 입력(4자릿수) >> ");
      int a = Integer.parseInt(sc.nextLine());
      //while문으로 바꿔서 break로 나가면 다시 입력해 주세요에서 코드 입력으로 감
      loop: while (a < 1000 || a > 9999) {
        System.out.println("다시 입력해 주세요!");
        return ;
      }
      System.out.print("이름 입력 >> ");
      String b = sc.nextLine();
      System.out.print("제목 입력 >> ");
      String c = sc.nextLine();

      sql = "insert into test values(" + a + ", '" + b + "', '" + c + "', sysdate, 0)";
      st.executeUpdate(sql);
      System.out.println(sql);
      System.out.println("입력 완료");
    } catch (Exception ex) {
      System.out.println("error = " + ex);
    }
  }

  public void dbSellectAll() {
    try {
      sql = "select * from test order by code";
      rs = st.executeQuery(sql);
      System.out.println("코 드\t이 름\t제 목\t  날 짜\t     조회수");
      while(rs.next()==true) {
        int jcode = rs.getInt("code");
        String jname = rs.getString("name");
        String jtitle = rs.getString("title");
        java.util.Date jdate = rs.getDate("wdate");
        int jcnt = rs.getInt("cnt");
        System.out.println(jcode + "\t" + jname + "\t" + jtitle + "\t" + jdate + "\t" + jcnt);
      }

    } catch (Exception ex) {
      System.out.println("error = " + ex);
    }
  }

  public void dbUpdate() {
    try {
      System.out.print("수정할 코드 입력(4자릿수) >> ");
      int upcode = Integer.parseInt(sc.nextLine());
      if (upcode < 1000 || upcode > 9999) {
        System.out.println("다시 입력해 주세요.");
        return;
      }
      System.out.print("새로운 코드 입력(4자릿수) >> ");
      int newcode = Integer.parseInt(sc.nextLine());
      sql = "update test set code = " + newcode + "where code = " + upcode;
      st.executeUpdate(sql);
      System.out.println("수정 완료");
    } catch (Exception ex) {
      System.out.println("error = " + ex);
    }
  }

  public void dbDelete() {
    try {
      System.out.print("삭제할 코드 입력(4자릿수) >> ");
      int delcode = Integer.parseInt(sc.nextLine());
      if (delcode < 1000 || delcode > 9999) {
        System.out.println("다시 입력해 주세요.");
        return;
      }
      sql = "delete from test where code = " + delcode;
      st.executeUpdate(sql);
      System.out.println("삭제 완료");
    } catch (Exception ex) {
      System.out.println("error = " + ex);
    }
  }

  public static void main(String[] args) {
    DBTest3 dbt = new DBTest3();
    dbt.dbConnect();
  }
}