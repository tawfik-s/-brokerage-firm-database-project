CREATE or replace trigger apartment_state_insert after insert ON booking for each row
begin
update apartment set free='f' where apartment_id=:new.apartment_id;
end;
/


CREATE or replace trigger apartment_state_delete after delete ON booking for each row
begin
update apartment set free='t' where apartment_id=:old.apartment_id;
end;
/