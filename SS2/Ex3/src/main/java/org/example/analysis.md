1. Thông báo lỗi đăng nhập phải lưu vào Request Scope vì thông báo lỗi chỉ cần hiển thị 1 lần sau request
   Nếu dùng Session: Lỗi sẽ bị giữ lại, refresh vẫn còn, Gây nhầm lẫn UX
2. totalViewCount phải lưu vào Application Scope vì nó là tổng lượt xem của tất cả người dùng, cần chia sẻ chung giữa các session
   Nếu dùng Session: Mỗi người dùng sẽ có totalViewCount riêng, không phản ánh đúng tổng lượt xem thực tế
3. Race Condition là khi nhiều thread cùng sửa 1 biến khiến dữ liệu bị sai
   Vấn đề ở đoạn code: 2 user cùng đọc count = 5
Code sửa: 
synchronized (application) {
   Integer count = (Integer) application.getAttribute("totalViewCount");
   if (count == null) count = 0;
   application.setAttribute("totalViewCount", count + 1);
   }
