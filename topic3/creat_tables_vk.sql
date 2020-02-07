DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;


-- Домашнее задание. Создать ещё 3 таблицы

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS hashtags;
CREATE TABLE hashtags(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    INDEX hashtags_name_idx(name)
);

DROP TABLE IF EXISTS media_hashtags;
CREATE TABLE media_hashtags(
	id SERIAL PRIMARY KEY,
    hashtag_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (hashtag_id) REFERENCES hashtags(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS mentions;
CREATE TABLE mentions(
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	owner_metion_id BIGINT UNSIGNED NOT null,
	PRIMARY KEY (user_id, media_id, owner_metion_id), -- может быть несколько упоминаний под медиа от разных юзеров
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (owner_metion_id) REFERENCES users(id)
);