DROP TABLE "ARTIST_SHOW";
CREATE TABLE "ARTIST_SHOW" (
  "role" VARCHAR2(30) NOT NULL,
  "aID" NUMBER NOT NULL,
  "sID" NUMBER NOT NULL,
  CONSTRAINT "ArtistShowPk" PRIMARY KEY ("aID", "sID")
);

ALTER TABLE "Artist_Show" ADD CONSTRAINT "Artist_Artist_Show_Fk" FOREIGN KEY ("aID") REFERENCES Artist("aID") ON DELETE CASCADE;
ALTER TABLE "Artist_Show" ADD CONSTRAINT "Show_Artist_Show_Fk" FOREIGN KEY ("sID") REFERENCES Show("sID") ON DELETE CASCADE;
