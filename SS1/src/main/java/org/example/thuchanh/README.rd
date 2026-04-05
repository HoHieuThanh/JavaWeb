Input:
username (String)
balance (double)

Output:
Nếu balance < 5000 -> Gửi cảnh báo (Popup hoặc Âm thanh)
Nếu dữ liệu lỗi -> "Dữ liệu không hợp lệ"

Kỹ thuật DI sử dụng: Constructor Injection
-> Lý do: Đảm bảo dependency bắt buộc luôn tồn tại.

Thiết kế
AlertService (interface)
PopupAlertService (VIP)
SoundAlertService (Thường)
PlaySessionService (Không dùng new, Nhận AlertService qua DI)