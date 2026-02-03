# استخدم صورة Nginx الرسمية
FROM nginx:alpine

# امسح الـ default config لو محتاج
RUN rm -rf /usr/share/nginx/html/*

# انسخ ملفات المشروع (HTML/CSS/JS) للـ container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# الـ Nginx بيشتغل أوتوماتيك في الصورة دي
