--DROP TABLE "DIRECTOR_SHOW";
CREATE TABLE "DIRECTOR_SHOW" (
  "dID" NUMBER NOT NULL,
  "sID" NUMBER NOT NULL,
  CONSTRAINT "DirectorShowPk" PRIMARY KEY ("dID", "sID")
);

ALTER TABLE "DIRECTOR_SHOW" ADD CONSTRAINT "Director_Director_Show_Fk" FOREIGN KEY ("dID") REFERENCES DIRECTOR("dID") ON DELETE CASCADE;
ALTER TABLE "DIRECTOR_SHOW" ADD CONSTRAINT "Show_Director_Show_Fk" FOREIGN KEY ("sID") REFERENCES SHOW("sID") ON DELETE CASCADE