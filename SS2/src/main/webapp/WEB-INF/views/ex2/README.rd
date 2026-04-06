     |	 Vị trí   	                             |   Loại vấn đề	              |  Hậu quả
1	 |   <%! private int requestCounter = 0; %>  |	 Race Condition	              |  Sai dữ liệu khi nhiều user truy cập đồng thời
2	 |   <% requestCounter++; %>	             |   Logic trong View (Scriptlet) |	 Vi phạm nguyên tắc Thin View, khó bảo trì
3	 |   <%= student.getName() %>	             |   Expression + XSS	          |  Dữ liệu user không được escape
4	 |   <!-- <%= ... %> -->	                 |   Sai loại comment	          |  Lỗi logic
5	 |   <%= student.getScore(); %>	             |   Sai cú pháp Expression	      |  Có ';' gây lỗi compile JSP