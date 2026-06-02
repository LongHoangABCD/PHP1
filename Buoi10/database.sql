-- =============================================
-- TẠO DATABASE VÀ TABLE USERS CHO BUỔI 10
-- =============================================
-- Tạo Database
CREATE DATABASE IF NOT EXISTS `php_mvc` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `php_mvc`;
-- Xóa table cũ nếu tồn tại (dùng cho demo)
DROP TABLE IF EXISTS `users`;
-- Tạo bảng users
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `phone` VARCHAR(20) NULL,
    `status` TINYINT(1) DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
-- =============================================
-- INSERT DỮ LIỆU MẪU (10 users)
-- =============================================
INSERT INTO `users` (`name`, `email`, `phone`, `status`)
VALUES (
        'Nguyễn Văn An',
        'an.nguyen@gmail.com',
        '0987654321',
        1
    ),
    (
        'Trần Thị Bình',
        'binh.tran@gmail.com',
        '0912345678',
        1
    ),
    (
        'Lê Hoàng Cường',
        'cuong.le@yahoo.com',
        '0978123456',
        1
    ),
    (
        'Phạm Thị Dung',
        'dung.pham@hotmail.com',
        NULL,
        1
    ),
    (
        'Hoàng Minh Đức',
        'duc.hoang@gmail.com',
        '0933456789',
        0
    ),
    ('Vũ Thị Em', 'em.vu@gmail.com', '0901234567', 1),
    (
        'Đặng Văn F',
        'f.dang@outlook.com',
        '0918765432',
        1
    ),
    (
        'Bùi Thị Giang',
        'giang.bui@gmail.com',
        '0981234567',
        1
    ),
    (
        'Đỗ Hoàng Hải',
        'hai.do@gmail.com',
        '0945678901',
        0
    ),
    (
        'Lý Thị Kim',
        'kim.ly@gmail.com',
        '0967890123',
        1
    );
-- Kiểm tra dữ liệu đã insert
SELECT *
FROM `users`
ORDER BY id ASC;