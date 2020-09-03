DROP TABLE "Show";
CREATE TABLE "Show" (
  "sID" NUMBER NOT NULL,
  "Title" VARCHAR2(30) NOT NULL,
  "Season" INTEGER NOT NULL,
  "Episodes" INTEGER NOT NULL,
  "Release_Date" DATE NOT NULL,
  "Ending_Date" DATE,
  "Rating" INTEGER NOT NULL,
  CONSTRAINT "ShowPk" PRIMARY KEY ("sID"),
  CONSTRAINT "RatingShow" CHECK ("Rating" BETWEEN 1 and 10)
);