DROP TABLE "Show";
CREATE TABLE "Show" (
  "sID" NUMBER NOT NULL,
  "Title" VARCHAR2(30) NOT NULL,
  "Season" INTEGER NOT NULL,
  "Episodes" INTEGER NOT NULL,
  "Release_Date" DATE NOT NULL,
  "Ending_Date" DATE,
  "Rating" INTEGER NOT NULL,
  "Episode Duration" INTEGER NOT NULL,
  "Language" VARCHAR2(20) NOT NULL,
  "Photo" BLOB,
  CONSTRAINT "ShowPk" PRIMARY KEY ("sID"),
  CONSTRAINT "RatingShow" CHECK ("Rating" BETWEEN 1 and 10)
);


CREATE SEQUENCE seq_show
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;
