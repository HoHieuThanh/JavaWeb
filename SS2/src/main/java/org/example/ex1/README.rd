1. DispatcherServlet chỉ xử lý các URL bắt đầu bằng /api/, request /welcome không nằm trong phạm vi này
DispatcherServlet đang nghe /api/*, không nghe /welcome

2. Hậu quả: Spring chỉ quét mỗi package service
Spring MVC tìm chỉ tìm @Controller ở service, không tìm ở các package khác

3. Ứng dụng vẫn không chạy
Vì dù DispatcherServlet đã nhận request /welcome nhưng không có Controller xử lý thì vẫn lỗi 404.