DROP DATABASE IF EXISTS reviews;
CREATE DATABASE reviews;
USE reviews;
		
CREATE TABLE Users (
  id int AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  is_allstar ENUM ('true', 'false') NOT NULL,
  followers int NOT NULL,
  favorites int NOT NULL,
  made int NOT NULL,
  PRIMARY KEY (id)
);
		
CREATE TABLE Reviews (
  id int NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  user_name TEXT NOT NULL,
  recipe_id int NOT NULL,
  recipe_name TEXT NOT NULL,
  rating int NOT NULL,
  long_submit_date TEXT NOT NULL,
  short_submit_date TEXT NOT NULL,
  review_text LONGTEXT NOT NULL,
  likes int NOT NULL,
  PRIMARY KEY (id)
);
		
CREATE TABLE user_made_recipe (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  recipe_id int NOT NULL,
  PRIMARY KEY (id)
);
		
CREATE TABLE user_favorited_recipe (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  recipe_id int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE user_liked_review (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  review_id int NOT NULL,
  PRIMARY KEY (id)
);

-- ALTER TABLE Reviews ADD FOREIGN KEY (user_id) REFERENCES Users (id);
-- ALTER TABLE user_made_recipe ADD FOREIGN KEY (user_id) REFERENCES Users (id);
-- ALTER TABLE user_made_recipe ADD FOREIGN KEY (recipe_id) REFERENCES Reviews (id);
-- ALTER TABLE user_favorited_recipe ADD FOREIGN KEY (user_id) REFERENCES Users (id);
-- ALTER TABLE user_favorited_recipe ADD FOREIGN KEY (recipe_id) REFERENCES Reviews (id);