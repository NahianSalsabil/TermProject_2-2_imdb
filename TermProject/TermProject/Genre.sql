DROP TABLE "Genre";
CREATE TABLE "Genre" (
  "gID" NUMBER NOT NULL,
  "Name" VARCHAR2(30) NOT NULL,
  CONSTRAINT "GenrePk" PRIMARY KEY ("gID")
);