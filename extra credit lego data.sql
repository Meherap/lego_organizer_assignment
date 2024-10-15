
-- Extra Credit: Additional sample data for the LEGO Organizer

-- Adding more LEGO sets from the LEGO website
INSERT INTO lego_sets (name, description, piece_count, theme_id, added_by_collector_id) VALUES 
('LEGO Creator Expert Taj Mahal', 'Model of the famous Taj Mahal with over 5,900 pieces.', 5923, 2, 1),
('LEGO Star Wars Imperial Star Destroyer', 'Iconic Star Wars starship with realistic details.', 4784, 1, 2),
('LEGO Technic Bugatti Chiron', 'High-detail model of the Bugatti Chiron with 3,599 pieces.', 3599, 2, 3),
('LEGO City Fire Station', 'Classic LEGO City Fire Station with 919 pieces.', 919, 3, 1),
('LEGO Star Wars Millennium Falcon', 'Detailed model of the Millennium Falcon with 7,541 pieces.', 7541, 1, 2);

-- Adding images for these sets
INSERT INTO set_images (set_id, image_url) VALUES 
(5, 'https://example.com/images/taj_mahal.jpg'),
(6, 'https://example.com/images/imperial_star_destroyer.jpg'),
(7, 'https://example.com/images/bugatti_chiron.jpg'),
(8, 'https://example.com/images/fire_station.jpg'),
(9, 'https://example.com/images/millennium_falcon.jpg');
