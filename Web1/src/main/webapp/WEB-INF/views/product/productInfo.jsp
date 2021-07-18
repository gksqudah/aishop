<%@page import="java.io.UnsupportedEncodingException" errorPage="DBError.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<%

    String gdsname = request.getParameter("gdsname");

    Connection conn = null;

    Statement stmt = null;

    try{

        Class.forName("oracle.jdbc.driver.OracleDriver");//JDBC 드라이버를 대표하는 클래스 이름을 넘겨줌

      

        //DB 연결을 위한 주소 및 ID PW

        conn = DriverManager.getConnection(

                "jdbc:oracle:thin:@localhost:1521:XE", "admin", "1234");

        if(conn == null)

            throw new Exception("데이터 베이스 연결 실패. <BR>");

        stmt = conn.createStatement();//데이터베이스 값을 읽어오기위한 Statement 객체 만들기

        //아래는 쿼리문을 만드는 과정

        ResultSet rs = stmt.executeQuery("select * from tbl_product where gdsname = '" + gdsname + "'");


        

        //실제 데이터를 가져옴

        if(rs.next()){


			int gdsnum = rs.getInt("gdsnum");
        	
            int gdsprice = rs.getInt("gdsprice");
            
            int gdsstock = rs.getInt("gdsstock");
            
            String gdscontent = rs.getString("gdscontent");
            
            int gdsdiscount = rs.getInt("GDSDISCOUNT");
            
            String catecode = rs.getString("catecode");
            


            request.setAttribute("GDSNAME", gdsname);
            request.setAttribute("GDSCONTENT", toUnicode(gdscontent));

            request.setAttribute("GDSPRICE", new Integer(gdsprice));
            
            request.setAttribute("GDSNUM", new Integer(gdsnum));
            request.setAttribute("GDSDISCOUNT", new Integer(gdsdiscount));
            request.setAttribute("GDSSTOCK", new Integer(gdsstock));
            request.setAttribute("CATECODE", toUnicode(catecode));

        }

    }

    finally{

        try{

            stmt.close();//Statement 객체를 닫음

        }catch(Exception ignored){

        }

        

        try{

            conn.close();//데이터 베이스 연결 종료

        }

        catch(Exception ignored){

        }

        

    }

    

    RequestDispatcher dispatcher = request.getRequestDispatcher("detail.jsp");

    dispatcher.forward(request, response);

%>

<%!

    private String toUnicode(String str){//ISO-8859-1 문자열을 Unicode 문자열로 변환

    //이것을 안쓰면 한글이 깨져보임

        try{

            byte[] b = str.getBytes("ISO-8859-1");

            return new String(b);

        }catch(UnsupportedEncodingException uee){

            System.out.println(uee.getMessage());

            return null;

        }

    }

 

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>

 

</body>

</html>



