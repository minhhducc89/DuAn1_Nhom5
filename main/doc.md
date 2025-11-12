### Cấu trúc thư mục

1. commons // File dùng chung cả dự án
2. uploads // Folder lưu trữ file upload

3. controllers // Xử lý logic
4. models // Thao tác cơ sở dữ liệu
5. views // Hiển thị
6. index.php // Điều hướng


// Không sử dụng đường dẫn tuyệt đối(file.php)
localhost/mvc-basic/trang-chu.php - Không dùng cách này nữa
-> Dùng route: Gọi đến hàm trong controller để thực thi(hàm không trả về)
- Hàm không trả về: không có return - Chỉ dùng để thực thi đoạn mã, và hàm này không trả về giá trị
- Hàm có trả về: Có return - Thực thi đoạn mã và trả về giá trị

Class - object - Hàm - Mảng


Mô hình MVC 
- Model: Dùng để tương tác với cơ sở dữ liệu
- View: Hiển trị, nhận yêu cầu người dùng
- Controller: Dùng để thực thi các đoạn mã xử lý logic


- Cấu hình DB trong file commons/env.php




git config --global user.name "Tên của bạn"
git config --global user.email "email@gmail.com"

1
git clone https://github.com/minhhducc89/DuAn1_Nhom5.git


cd DuAn1_Nhom5

2
Tạo branch riêng để làm việc:
git checkout -b feature/[ten-thanh-vien]

3
Làm việc và commit trên branch đó:
git add .
git commit -m "Thêm chức năng đăng nhập"

4
Push branch của bạn lên GitHub:
git push origin feature/[ten-branch]

5
Tạo Pull Request (PR) để merge vào main

Sau khi push xong, truy cập GitHub repository → bạn sẽ thấy thông báo gợi ý tạo Pull Request.

Hoặc vào thủ công:

Vào tab "Pull requests" → "New pull request"

Chọn:

base branch: main

compare branch: feature/[ten-branch-cua-ban]

Nhập mô tả thay đổi → Create pull request

Người quản lý dự án sẽ review và merge vào main.

6

Cập nhật code mới nhất từ main (khi cần)

Khi branch main có thay đổi, bạn nên cập nhật về branch của mình để tránh lỗi conflict:

git checkout main
git pull origin main
git checkout feature/[ten-branch]
git merge main