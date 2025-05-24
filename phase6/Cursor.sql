DELIMITER //
CREATE PROCEDURE PrintAllUsers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE userName VARCHAR(100);
    DECLARE userCursor CURSOR FOR SELECT Name FROM Users;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN userCursor;

    user_loop: LOOP
        FETCH userCursor INTO userName;
        IF done THEN
            LEAVE user_loop;
        END IF;
        SELECT CONCAT('User: ', userName);
    END LOOP;

    CLOSE userCursor;
END //
DELIMITER ;