
-- +migrate Up
CREATE TABLE IF NOT EXISTS users (
  id bigint(20) AUTO_INCREMENT,
  name VARCHAR(255),
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
);

-- +migrate Down
DROP TABLE IF EXISTS users;