--create a video table
CREATE TABLE VIDEO(
ID SERIAL PRIMARY KEY,
VIDEO_TITLE VARCHAR(100) NOT NULL,
LENGTH_IN_MINUTES VARCHAR(100) NOT NULL,
URL VARCHAR(100) NOT NULL);

--Populate the table
INSERT INTO VIDEO ( URL, VIDEO_TITLE, LENGTH_IN_MINUTES)
VALUES 
('www.youtube.com/watch?v=RsEZmictANA','Taylor Swift - willow','4:12'),
('www.youtube.com/watch?v=B6_iQvaIjXw','Ariana Grande - 34+35','3:40'),
('www.youtube.com/watch?v=iejpZAJMsC8','Shawn Mendes - Can’t Imagine','2:28'),
('www.youtube.com/watch?v=zlJDTxahav0','Selena Gomez - Lose You To Love Me','3:26');

SELECT * FROM VIDEO;

--Create and populate Reviewers table.
CREATE TABLE VIDEO_REVIEW(
REVIEW_ID SERIAL PRIMARY KEY,
VIDEO_TITLE VARCHAR(100) NOT NULL,
NAME VARCHAR(100) NOT NULL,
RATING VARCHAR(100),
SHORT_TEXT_REVIEW VARCHAR(100) NOT NULL);

INSERT INTO VIDEO_REVIEW (VIDEO_TITLE, NAME, RATING, SHORT_TEXT_REVIEW)
VALUES 
('Taylor Swift - willow','Kathy', '5','TAYLOR ALISON SWIFT IS THE BEST MUSICIAN EVER'),
('Shawn Mendes - Can’t Imagine','Victor','4.5','I cant imagine a world without shawns music.We love you!' ),
('Shawn Mendes - Can’t Imagine','Katelyn', '4.4','I’m so in love with this man.'),
('Ariana Grande - 34+35','David','5','I dropped everything to watch this. She is talented and love her!!'),
('Ariana Grande - 34+35', 'Rose','4.9','The fact that I’m here within 30 minutes of it being posted.I feel so privileged!'),
('Shawn Mendes - Can’t Imagine','Katelyn','4.4','I’m so in love with this man.');

SELECT * FROM VIDEO_REVIEW;

--Report on Video Reviews. Use join statement.
SELECT * FROM VIDEO_REVIEW 
INNER JOIN VIDEO
ON VIDEO.VIDEO_TITLE = VIDEO_REVIEW.VIDEO_TITLE;