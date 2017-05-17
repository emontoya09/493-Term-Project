CREATE PROCEDURE `cw_remove`(IN `var4` VARCHAR(50))
  BEGIN
DELETE FROM CardsPic WHERE imageName = var4;
END;