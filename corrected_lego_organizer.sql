
-- Drop the database if it exists and then create a new one
DROP DATABASE IF EXISTS lego_organizer;
CREATE DATABASE lego_organizer;
USE lego_organizer;

-- Table for collectors
CREATE TABLE collectors (
    collector_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table for themes
CREATE TABLE themes (
    theme_id INT PRIMARY KEY AUTO_INCREMENT,
    theme_name VARCHAR(100) NOT NULL
);

-- Table for lego sets
CREATE TABLE lego_sets (
    set_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    piece_count INT,
    theme_id INT,
    added_by_collector_id INT,
    FOREIGN KEY (theme_id) REFERENCES themes(theme_id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (added_by_collector_id) REFERENCES collectors(collector_id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table for set images
CREATE TABLE set_images (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    set_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (set_id) REFERENCES lego_sets(set_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Inserting sample data into the tables
-- Adding collectors
INSERT INTO collectors (name, email, password) VALUES 
('John Doe', 'john@example.com', 'password123'),
('Jane Smith', 'jane@example.com', 'securepass'),
('Mike Brown', 'mike@example.com', 'pass456');

-- Adding themes
INSERT INTO themes (theme_name) VALUES 
('Star Wars'),
('Technic'),
('City');

-- Adding LEGO sets
INSERT INTO lego_sets (name, description, piece_count, theme_id, added_by_collector_id) VALUES 
('Millennium Falcon', 'Star Wars spaceship with lots of details.', 7541, 1, 1),
('Porsche 911', 'High-detail model of the classic sports car.', 2704, 2, 2),
('Police Station', 'A detailed LEGO City police station.', 2923, 3, 3),
('Death Star', 'Massive model of the Star Wars Death Star.', 4016, 1, 1);

-- Adding set images
INSERT INTO set_images (set_id, image_url) VALUES 
(1, 'https://example.com/images/millennium_falcon.jpg'),
(2, 'https://example.com/images/porsche_911.jpg'),
(3, 'https://example.com/images/police_station.jpg'),
(4, 'https://example.com/images/death_star.jpg');
