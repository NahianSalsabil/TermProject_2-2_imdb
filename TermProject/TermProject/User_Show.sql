DROP TABLE "User_Show";
CREATE TABLE "User_Show" (
  "rating" FLOAT(53) NOT NULL,
  "usID" NUMBER NOT NULL,
  "sID" NUMBER NOT NULL,
  CONSTRAINT "User_Show" PRIMARY KEY ("usID", "sID")
);

ALTER TABLE "User_Show" ADD CONSTRAINT "User_User_Show_Fk" FOREIGN KEY ("usID") REFERENCES Users(usID) ON DELETE CASCADE;
ALTER TABLE "User_Show" ADD CONSTRAINT "Show_User_Show_Fk" FOREIGN KEY ("sID") REFERENCES Show(sID) ON DELETE CASCADE;