#node version 18 trên docker hub alpine kéo về container đóng gói
FROM node:18-alpine
# nó sẽ tạo 1 folder app và chứa project 
WORKDIR /app
# sao chép các file và thư mục vào container 
COPY . .
# Có thể tạo một lệnh khi build image. Được sử dụng để cài đặt các package vào container.
RUN yarn install --production
# hướng dẫn docker chạy project
CMD ["node", "src/index.js"]