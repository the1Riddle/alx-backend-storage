-- a screipt that creates users trable

CREATE TABLE IF NOT EXISTS users(
        id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        name VARCHAR(255),
        country ENUM('US', 'CO', 'TN') NOT NULL
);
