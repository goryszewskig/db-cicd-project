
  CREATE OR REPLACE EDITIONABLE TRIGGER "DEMO"."SET_DATE_BI" 
  BEFORE INSERT ON trees
  FOR EACH ROW
BEGIN

  if :new.submition_date is null THEN
    :new.submition_date := systimestamp;
  end if;

END set_date_bi;

ALTER TRIGGER "DEMO"."SET_DATE_BI" ENABLE