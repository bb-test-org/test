CREATE TABLE `T1` (
  `a` VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `t` (
  `id` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `t23` (
  `id` INT(11) NOT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `t_his` (
  `a` INT(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `t_his1` (
  `a` INT(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `th1` (
  `a` INT(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;

CREATE TABLE `th2` (
  `a` INT(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=LATIN1;


-- DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `batchExecSqlForEquipChangeRec`()
BEGIN
 DECLARE groupCode varchar(100);
 DECLARE projectId varchar(100);
 DECLARE objId VARCHAR(100);
 DECLARE did VARCHAR(100);
 DECLARE searchCount INT;
 DECLARE done1 int default FALSE;
 DECLARE cusor1 CURSOR FOR SELECT group_code,project_id,obj_id,id FROM `adm-server`.`dtx_equip_change_record` where class_code is null or model_flag is null;
 DECLARE CONTINUE HANDLER FOR not found set done1=TRUE;
 BEGIN
  SELECT count(*) into searchCount FROM `adm-server`.`dtx_equip_change_record` where class_code is null or model_flag is null;
  IF searchCount>0 THEN 
  OPEN cusor1;
   
  REPEAT
    FETCH cusor1 into groupCode,projectId,objId,did;
    set @groupCode = groupCode;
    set @projectId = projectId;
    set @objId = objId;
    set @did = did;
    BEGIN
     DECLARE urlsql LONGTEXT;
     DECLARE countSql LONGTEXT;
     
     -- 查询objId 对应数据是否存在
     set countSql = CONCAT('select count(*) into @count from `dtx-dic_',LOWER(@groupCode),'`.`dt_object` where id=','\'',@objId,'\';');
     SET @countSql=countSql;
     PREPARE pr0 FROM @countSql;
     EXECUTE pr0;
     DEALLOCATE PREPARE pr0;
     IF @count>0 THEN
      
      set urlsql = CONCAT('select IF(JSON_UNQUOTE(JSON_EXTRACT(infos, \'$.containerId \')) is null ,0,1) ,class_code into @modelFlag,@classCode from `dtx-dic_',LOWER(@groupCode),'`.`dt_object` where id=','\'',@objId,'\';');
      SET @urlsql=urlsql;
      PREPARE pr1 FROM @urlsql;
      EXECUTE pr1;
      DEALLOCATE PREPARE pr1;
      
      -- 更新数据
      set @updateSql = CONCAT('UPDATE `adm-server`.`dtx_equip_change_record` set class_code=','\'',@classCode,'\'',',model_flag=',@modelFlag,' where id = ','\'',@did,'\';');
      call my_run_sql(@updateSql);
     
     END IF;
    END;
   UNTIL done1 END REPEAT;
  close cusor1;
  END IF;
  END;
END ;

