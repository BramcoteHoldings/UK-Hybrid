drop table Saved_screen;

--select * from saved_screen;

CREATE TABLE AXIOM.Saved_Screen
(
  Group_Name     VARCHAR2(100 BYTE)             DEFAULT null,
  User_ID        VARCHAR2(5 BYTE)               NOT NULL,
  nSaved_Screen  number(10),
  ControlData    NCLOB                          DEFAULT null,
  ChildData      NCLOB                          default null,
  Total         numeric(17,10)                  default null,
  Description    VARCHAR2(200),
  CreateDate           DATE                           DEFAULT sysdate,
  LastModified		Date,
  LastModifiedBy	varchar2(5 byte)           DEFAULT NULL,
  CONSTRAINT "SAVED_SCREEN_PK" PRIMARY KEY (NSaved_Screen)
);

GRANT DELETE, INSERT, SELECT, UPDATE ON AXIOM.Saved_Screen TO AXIOM_UPDATE_ROLE;


DROP SEQUENCE AXIOM.BHL_SAVED_SCREEN_SEQ;

CREATE SEQUENCE AXIOM.BHL_SAVED_SCREEN_SEQ
  START WITH 1
  MAXVALUE 999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;

GRANT SELECT ON AXIOM.Saved_Screen TO AXIOM_UPDATE_ROLE;

GRANT SELECT ON AXIOM.BHL_SAVED_SCREEN_SEQ TO AXIOM_UPDATE_ROLE;

CREATE OR REPLACE PUBLIC SYNONYM BHL_SAVED_SCREEN_SEQ FOR AXIOM.BHL_SAVED_SCREEN_SEQ;



/* Security Entries for Stencils.  */

DELETE FROM "SECURITY" WHERE item LIKE 'Template.%';

INSERT INTO SECURITY
(ITEM) VALUES ('Template.Receipt');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.Cheque');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.Fee');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.NMemo');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.Sundry');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.Alloc');

INSERT INTO SECURITY
(ITEM) VALUES ('Template.TransItem');


DELETE FROM EMPTYPESECURITY WHERE item LIKE 'Template.%';

-- select * FROM EMPTYPESECURITY WHERE item LIKE 'Template.%';


DECLARE
BEGIN 
  FOR iloop IN (select * 
				from emptype empt, SECURITY sec
				WHERE sec.item LIKE 'Template.%')
  LOOP   
    INSERT INTO emptypesecurity
    VALUES (iloop.code, iloop.ITEM, 0); -- By default, disable the feature. Admin can turn it on as needed.
  END LOOP;
END;


COMMIT;
