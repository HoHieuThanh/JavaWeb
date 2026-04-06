1. XSS là gì? Vì sao <c:out> an toàn hơn ${}?
XSS (Cross-Site Scripting) là lỗ hổng bảo mật cho phép kẻ tấn công chèn và thực thi mã JavaScript độc hại trên trình duyệt của người dùng thông qua dữ liệu đầu vào.
Trong JSP:
${keyword} hiển thị dữ liệu trực tiếp ra HTML mà không escape, nên nếu chứa <script> thì trình duyệt sẽ thực thi.
<c:out value="${keyword}"/> sẽ escape các ký tự đặc biệt như <, > thành &lt;, &gt;, nên chỉ hiển thị dạng text, không thực thi script.

Ví dụ với input:

Dùng ${keyword} → HTML:
<script>alert(1)</script>
-> Trình duyệt chạy script (không an toàn)

Dùng <c:out> → HTML:
&lt;script&gt;alert(1)&lt;/script&gt;
-> Hiển thị dạng text (an toàn)

2. Khác nhau giữa <c:if> và <c:choose>
   <c:if>:
   Dùng cho 1 điều kiện đơn lẻ
   Giống câu lệnh if trong Java
   <c:choose>, <c:when>, <c:otherwise>:
   Dùng cho nhiều điều kiện
   Giống if – else if – else hoặc switch

Trong bài này:
Phần “Giá vé” và “Vé còn lại” có nhiều trường hợp (miễn phí, hết vé, sắp hết, còn nhiều)
-> nên dùng <c:choose> để xử lý rõ ràng và tránh viết nhiều <c:if> lồng nhau.

3. Vai trò của <c:url>
<c:url> dùng để tạo URL đúng với context path của ứng dụng, tránh hardcode đường dẫn.
Nếu dùng hardcode:
href="/events/1/book"
Khi deploy ứng dụng với context path: /ticketing
-> Link sẽ sai:

Nếu dùng: <c:url value="/events/1/book"/>
-> Link đúng: