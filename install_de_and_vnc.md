# Nội dung
Hướng dẫn cài đặt Desktop Environment và VNC cho một image Ubuntu để có thể remote từ Desktop trên HĐH Windows.

# Yêu cầu
- Đã có sẵn [Docker](https://docs.docker.com/desktop/install/windows-install/) và [RealVNC Viewer](https://www.realvnc.com/en/connect/download/viewer/) trên máy.

# Thực hành

## Bước 1: Build image và tạo container
Từ thư mục gốc chạy lệnh `docker-compose up`. Sau khi chạy xong ta sẽ có một image đã chứa sẵn Desktop Environment và VNC.
Giải thích về các nội dung tệp Dockerfile:
- `FROM ubuntu:22.04`: Sử dụng ubuntu phiên bản 22.04 làm base image.
- `RUN apt install -y xfce4 xfce4-goodies`: Sử dụng xfce4 làm desktop environment.
- `RUN apt install -y tigervnc-standalone-server`: Sử dụng tigervnc làm VNC.
- `COPY xstartup ~/.vnc/`: file xstartup có tác dụng giúp DE và VNC tương tác với nhau.

## Bước 2: 
## Kết quả

![[result.png]]