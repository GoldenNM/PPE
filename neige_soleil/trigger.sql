--trigger 1: dateD < dateF --

drop trigger 
if exists verify_date;
delimiter | Create trigger verify_date BEFORE
insert
  on reservation for each row BEGIN 
  if new.dateD > new.dateF then signal sqlstate '45000'
set
  message_text = ' erreur la dated doit etre inferieur';
end if;
END | delimiter;

--trigger 2: dateD <= curdate --sssss
drop trigger if exists verify_curdate;
delimiter | Create trigger verify_curdate BEFORE
insert
  on reservation for each row BEGIN If DateD < curdate () THEN
set
  message_text = ' Erreur: La date de d é but doit ê tre supérieur ou égale à la date d\'aujourd\'hui
  ');
END IF;
END | delimiter;

--trigger 3:--

 Drop trigger if exists delete_client;
delimiter | Create Trigger delete_client
After
  delete on client for each row Begin
DELETE FROM
  RESERVATION
WHERE
  reservation.idClient = old.idClient;
END | delimiter;
DBMS_OUTPUT.PUT_LINE(
  ' La date de debut doit ê tre inf é rieur à la date de fin de reservation ');