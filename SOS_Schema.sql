-- temporary store procedue for remove foreign key
DROP PROCEDURE IF EXISTS `__tmp_removeFK`;
DELIMITER $$
CREATE PROCEDURE `__tmp_removeFK` (tableName varchar(64))
BEGIN
  DECLARE fkName varchar(64);
  DECLARE sqlDropFK varchar(250);
  DECLARE done INT DEFAULT 0;

  DECLARE fkCursor CURSOR FOR
    SELECT CONSTRAINT_NAME FROM information_schema.TABLE_CONSTRAINTS TC
    WHERE TC.TABLE_SCHEMA = database()
    AND   TC.TABLE_NAME = tableName
    AND   TC.CONSTRAINT_TYPE = 'FOREIGN KEY';
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  OPEN fkCursor;
  FETCH fkCursor INTO fkName;

  WHILE done = 0 DO
    SET @sqlDropFK = CONCAT('ALTER TABLE `', tableName ,'` DROP FOREIGN KEY `', fkName, '`;');
    PREPARE stmt_dropFK FROM @sqlDropFK;
    EXECUTE stmt_dropFK;
    DEALLOCATE PREPARE stmt_dropFK;

    FETCH fkCursor INTO fkName;
  END WHILE;

  CLOSE fkCursor;
END $$

DELIMITER ;

-- Remove tbl_apparel_parameter foreign key constraint
CALL __tmp_removeFK('tbl_apparel_parameter');

-- Remove tbl_apparel_parameter_map foreign key constraint
CALL __tmp_removeFK('tbl_apparel_parameter_map');

-- Remove tbl_apparel_type foreign key constraint
CALL __tmp_removeFK('tbl_apparel_type');

-- Remove tbl_blog_category foreign key constraint
CALL __tmp_removeFK('tbl_blog_category');

-- Remove tbl_blog_comment foreign key constraint
CALL __tmp_removeFK('tbl_blog_comment');

-- Remove tbl_blog_post foreign key constraint
CALL __tmp_removeFK('tbl_blog_post');

-- Remove tbl_blog_post_to_category foreign key constraint
CALL __tmp_removeFK('tbl_blog_post_to_category');

-- Remove tbl_blog_related foreign key constraint
CALL __tmp_removeFK('tbl_blog_related');

-- Remove tbl_blog_tag foreign key constraint
CALL __tmp_removeFK('tbl_blog_tag');

-- Remove tbl_data_cache foreign key constraint
CALL __tmp_removeFK('tbl_data_cache');

-- Remove tbl_images foreign key constraint
CALL __tmp_removeFK('tbl_images');

-- Remove tbl_parameter_option foreign key constraint
CALL __tmp_removeFK('tbl_parameter_option');

-- Remove tbl_parameter_option_map foreign key constraint
CALL __tmp_removeFK('tbl_parameter_option_map');

-- Remove tbl_user_addresses foreign key constraint
CALL __tmp_removeFK('tbl_user_addresses');

-- Remove tbl_user_product foreign key constraint
CALL __tmp_removeFK('tbl_user_product');

-- Remove tbl_user_profile foreign key constraint
CALL __tmp_removeFK('tbl_user_profile');

-- Remove tbl_user_registration foreign key constraint
CALL __tmp_removeFK('tbl_user_registration');

-- Remove tbl_user_wishlist foreign key constraint
CALL __tmp_removeFK('tbl_user_wishlist');

-- Remove temporary store procedue for remove foreign key
DROP PROCEDURE IF EXISTS `__tmp_removeFK`;

DROP TABLE IF EXISTS `tbl_apparel_parameter`;

DROP TABLE IF EXISTS `tbl_apparel_parameter_map`;

DROP TABLE IF EXISTS `tbl_apparel_type`;

DROP TABLE IF EXISTS `tbl_blog_category`;

DROP TABLE IF EXISTS `tbl_blog_comment`;

DROP TABLE IF EXISTS `tbl_blog_post`;

DROP TABLE IF EXISTS `tbl_blog_post_to_category`;

DROP TABLE IF EXISTS `tbl_blog_related`;

DROP TABLE IF EXISTS `tbl_blog_tag`;

DROP TABLE IF EXISTS `tbl_data_cache`;

DROP TABLE IF EXISTS `tbl_images`;

DROP TABLE IF EXISTS `tbl_parameter_option`;

DROP TABLE IF EXISTS `tbl_parameter_option_map`;

DROP TABLE IF EXISTS `tbl_user_addresses`;

DROP TABLE IF EXISTS `tbl_user_product`;

DROP TABLE IF EXISTS `tbl_user_profile`;

DROP TABLE IF EXISTS `tbl_user_registration`;

DROP TABLE IF EXISTS `tbl_user_wishlist`;

CREATE TABLE `tbl_apparel_parameter` (
   `tbl_apparel_parameter_id` int auto_increment NOT NULL  
  ,`parameter_description` varchar(500) NOT NULL  
  ,`parameter_image` varchar(500) NOT NULL  
  ,`parameter_name` varchar(500) NOT NULL  
  ,CONSTRAINT PK_tblapparelparameter PRIMARY KEY (tbl_apparel_parameter_id)
);

CREATE TABLE `tbl_apparel_parameter_map` (
   `tbl_apparel_parameter_map_id` int auto_increment NOT NULL  
  ,`tbl_apparel_type_id` int NOT NULL  
  ,`tbl_apparel_parameter_id` int NOT NULL  
  ,CONSTRAINT PK_tblapparelparametermap PRIMARY KEY (tbl_apparel_parameter_map_id)
);

CREATE TABLE `tbl_apparel_type` (
   `tbl_apparel_type_id` int auto_increment NOT NULL  
  ,`name` varchar(200) NOT NULL  
  ,`description` varchar(1000) NULL  
  ,`gender` varchar(1) NULL  
  ,`enabled` tinyint(4) NOT NULL  
  ,`base_image` varchar(1000) NULL  
  ,CONSTRAINT PK_tblappareltype PRIMARY KEY (tbl_apparel_type_id)
);

CREATE TABLE `tbl_blog_category` (
   `tbl_blog_category_id` int auto_increment NOT NULL  
  ,`name` varchar(50) NOT NULL  
  ,`enabled` tinyint NOT NULL  DEFAULT 1 
  ,CONSTRAINT PK_tblblogcategory PRIMARY KEY (tbl_blog_category_id)
);

CREATE TABLE `tbl_blog_comment` (
   `tbl_blog_comment_id` int auto_increment NOT NULL  
  ,`tbl_blog_post_id` int NOT NULL  
  ,`is_reply_to_id` int NOT NULL  
  ,`comment` text NOT NULL  
  ,`tbl_user_profile_id` int NOT NULL  
  ,`enabled` tinyint NOT NULL  
  ,`date_commented` datetime NOT NULL  
  ,CONSTRAINT PK_tblblogcomment PRIMARY KEY (tbl_blog_comment_id)
);

CREATE TABLE `tbl_blog_post` (
   `tbl_blog_post_id` int auto_increment NOT NULL  
  ,`title` varchar(50) NOT NULL  
  ,`article` text NULL  
  ,`file` varchar(50) NULL  
  ,`tbl_user_profile_id` int NOT NULL  
  ,`date_published` datetime NOT NULL  
  ,`banner_image` varchar(50) NOT NULL  
  ,`featured` tinyint NOT NULL  
  ,`enabled` tinyint NOT NULL  
  ,`comments_enabled` tinyint NOT NULL  
  ,`views` int NOT NULL  
  ,CONSTRAINT PK_tblblogpost PRIMARY KEY (tbl_blog_post_id)
);

CREATE TABLE `tbl_blog_post_to_category` (
   `tbl_blog_post_to_category_id` int auto_increment NOT NULL  
  ,`tbl_blog_category_id` int NOT NULL  
  ,`tbl_blog_post_id` int NOT NULL  
  ,CONSTRAINT PK_tblblogposttocategory PRIMARY KEY (tbl_blog_post_to_category_id)
);

CREATE TABLE `tbl_blog_related` (
   `tbl_blog_related_id` int auto_increment NOT NULL  
  ,`tbl_blog_post_id` int NOT NULL  
  ,`tbl_blog_related_to_id` int NOT NULL  
  ,CONSTRAINT PK_tblblogrelated PRIMARY KEY (tbl_blog_related_id)
);

CREATE TABLE `tbl_blog_tag` (
   `tbl_blog_tag_id` int auto_increment NOT NULL  
  ,`tbl_blog_post_id` int NOT NULL  
  ,`tag` varchar(50) NOT NULL  
  ,CONSTRAINT PK_tblblogtag PRIMARY KEY (tbl_blog_tag_id)
);

CREATE TABLE `tbl_data_cache` (
   `tbl_data_cache_id` int auto_increment NOT NULL  
  ,`data_cache_name` varchar(500) NOT NULL  
  ,`data_cache_query` text NOT NULL  
  ,CONSTRAINT PK_tbldatacache PRIMARY KEY (tbl_data_cache_id)
);

CREATE TABLE `tbl_images` (
   `tbl_images_id` int auto_increment NOT NULL  
  ,`path` varchar(1000) NOT NULL  
  ,`description` text NOT NULL  
  ,CONSTRAINT PK_tblimages PRIMARY KEY (tbl_images_id)
);

CREATE TABLE `tbl_parameter_option` (
   `tbl_parameter_option_id` int auto_increment NOT NULL  
  ,`option_name` varchar(500) NOT NULL  
  ,`option_description` varchar(500) NULL  
  ,`option_image` varchar(500) NOT NULL  
  ,CONSTRAINT PK_tblparameteroption PRIMARY KEY (tbl_parameter_option_id)
);

CREATE TABLE `tbl_parameter_option_map` (
   `tbl_parameter_option_map_id` int auto_increment NOT NULL  
  ,`tbl_apparel_parameter_id` int NOT NULL  
  ,`tbl_parameter_option_id` int NOT NULL  
  ,CONSTRAINT PK_tblparameteroptionmap PRIMARY KEY (tbl_parameter_option_map_id)
);

CREATE TABLE `tbl_user_addresses` (
   `tbl_user_addresses_id` int auto_increment NOT NULL  
  ,`tbl_user_profile_id` int NOT NULL  
  ,`address` varchar(1000) NOT NULL  
  ,`city` varchar(255) NOT NULL  
  ,`state` varchar(255) NULL  
  ,`country` varchar(255) NULL  
  ,`zip_code` int NULL  
  ,`contact_no` int NULL  
  ,`email_id` varchar(255) NULL  
  ,CONSTRAINT PK_tbluseraddresses PRIMARY KEY (tbl_user_addresses_id)
);

CREATE TABLE `tbl_user_product` (
   `tbl_user_product_id` int auto_increment NOT NULL  
  ,`tbl_apparel_type_id` int NOT NULL  
  ,`product_title` varchar(100) NOT NULL  
  ,`product_long_description` varchar(1000) NOT NULL  
  ,`product_short_desription` varchar(1000) NOT NULL  
  ,`mrp` varchar(1000) NOT NULL  
  ,`selling_price` varchar(1000) NOT NULL  
  ,`product_url` varchar(1000) NULL  
  ,`product_brand` varchar(1000) NULL  
  ,`in_stock` varchar(10) NULL  
  ,`is_available` varchar(10) NULL  
  ,`cod_available` varchar(10) NULL  
  ,`emi_available` varchar(10) NULL  
  ,`discount_percentage` varchar(10) NULL  
  ,`cashback` varchar(10) NULL  
  ,`offers` varchar(10) NULL  
  ,`size` varchar(10) NULL  
  ,`color` varchar(10) NULL  
  ,`size_unit` varchar(10) NULL  
  ,`size_variants` varchar(10) NULL  
  ,`color_variants` varchar(10) NULL  
  ,`style_code` varchar(10) NULL  
  ,`image_url1` varchar(1000) NULL  
  ,`image_url2` varchar(1000) NULL  
  ,`image_url3` varchar(1000) NULL  
  ,`image_url4` varchar(1000) NULL  
  ,`image_url5` varchar(1000) NULL  
  ,`tags` varchar(1000) NULL  
  ,CONSTRAINT PK_tbluserproduct PRIMARY KEY (tbl_user_product_id)
);

CREATE TABLE `tbl_user_profile` (
   `tbl_user_profile_id` int auto_increment NOT NULL  
  ,`first_name` varchar(50) NOT NULL  
  ,`last_name` varchar(50) NOT NULL  
  ,`contact_no` int NULL  
  ,`user_image` blob NULL  
  ,`date_of_birth` date NULL  
  ,`gender` varchar(1) NULL  
  ,`tbl_user_registration_id` int NOT NULL  
  ,CONSTRAINT PK_tbluserprofile PRIMARY KEY (tbl_user_profile_id)
);

CREATE TABLE `tbl_user_registration` (
   `tbl_user_registration_id` int auto_increment NOT NULL  
  ,`email_id` varchar(100) NOT NULL  
  ,`password` varchar(100) NOT NULL  
  ,`login_provider` varchar(100) NULL  
  ,`provider_token` varchar(100) NULL  
  ,`token_expired` varchar(1) NULL  
  ,`user_unique_id` varchar(100) NULL  
  ,CONSTRAINT PK_tbluserregistration PRIMARY KEY (tbl_user_registration_id)
);

CREATE TABLE `tbl_user_wishlist` (
   `tbl_user_wishlist_id` int auto_increment NOT NULL  
  ,`tbl_user_profile_id` int NOT NULL  
  ,`tbl_user_product_id` int NOT NULL  
  ,CONSTRAINT PK_tbluserwishlist PRIMARY KEY (tbl_user_wishlist_id)
);



ALTER TABLE `tbl_apparel_parameter_map` ADD CONSTRAINT FK_tblapparelparametermap_tblappareltypeid FOREIGN KEY (tbl_apparel_type_id) REFERENCES tbl_apparel_type(tbl_apparel_type_id);
ALTER TABLE `tbl_apparel_parameter_map` ADD CONSTRAINT FK_tblapparelparametermap_tblapparelparameterid FOREIGN KEY (tbl_apparel_parameter_id) REFERENCES tbl_apparel_parameter(tbl_apparel_parameter_id);


ALTER TABLE `tbl_blog_comment` ADD CONSTRAINT FK_tblblogcomment_tblblogpostid FOREIGN KEY (tbl_blog_post_id) REFERENCES tbl_blog_post(tbl_blog_post_id);
ALTER TABLE `tbl_blog_comment` ADD CONSTRAINT FK_tblblogcomment_tbluserprofileid FOREIGN KEY (tbl_user_profile_id) REFERENCES tbl_user_profile(tbl_user_profile_id);


ALTER TABLE `tbl_blog_post` ADD CONSTRAINT FK_tblblogpost_tbluserprofileid FOREIGN KEY (tbl_user_profile_id) REFERENCES tbl_user_profile(tbl_user_profile_id);


ALTER TABLE `tbl_blog_post_to_category` ADD CONSTRAINT FK_tblblogposttocategory_tblblogcategoryid FOREIGN KEY (tbl_blog_category_id) REFERENCES tbl_blog_category(tbl_blog_category_id);
ALTER TABLE `tbl_blog_post_to_category` ADD CONSTRAINT FK_tblblogposttocategory_tblblogpostid FOREIGN KEY (tbl_blog_post_id) REFERENCES tbl_blog_post(tbl_blog_post_id);


ALTER TABLE `tbl_blog_related` ADD CONSTRAINT FK_tblblogrelated_tblblogpostid FOREIGN KEY (tbl_blog_post_id) REFERENCES tbl_blog_post(tbl_blog_post_id);
ALTER TABLE `tbl_blog_related` ADD CONSTRAINT FK_tblblogrelated_tblblogrelatedtoid FOREIGN KEY (tbl_blog_related_to_id) REFERENCES tbl_blog_post(tbl_blog_post_id);


ALTER TABLE `tbl_blog_tag` ADD CONSTRAINT FK_tblblogtag_tblblogpostid FOREIGN KEY (tbl_blog_post_id) REFERENCES tbl_blog_post(tbl_blog_post_id);


ALTER TABLE `tbl_parameter_option_map` ADD CONSTRAINT FK_tblparameteroptionmap_tblapparelparameterid FOREIGN KEY (tbl_apparel_parameter_id) REFERENCES tbl_apparel_parameter(tbl_apparel_parameter_id);
ALTER TABLE `tbl_parameter_option_map` ADD CONSTRAINT FK_tblparameteroptionmap_tblparameteroptionid FOREIGN KEY (tbl_parameter_option_id) REFERENCES tbl_parameter_option(tbl_parameter_option_id);


ALTER TABLE `tbl_user_addresses` ADD CONSTRAINT FK_tbluseraddresses_tbluserprofileid FOREIGN KEY (tbl_user_profile_id) REFERENCES tbl_user_profile(tbl_user_profile_id);


ALTER TABLE `tbl_user_product` ADD CONSTRAINT FK_tbluserproduct_tblappareltypeid FOREIGN KEY (tbl_apparel_type_id) REFERENCES tbl_apparel_type(tbl_apparel_type_id);


ALTER TABLE `tbl_user_profile` ADD CONSTRAINT FK_tbluserprofile_tbluserregistrationid FOREIGN KEY (tbl_user_registration_id) REFERENCES tbl_user_registration(tbl_user_registration_id);


ALTER TABLE `tbl_user_wishlist` ADD CONSTRAINT FK_tbluserwishlist_tbluserprofileid FOREIGN KEY (tbl_user_profile_id) REFERENCES tbl_user_profile(tbl_user_profile_id);
ALTER TABLE `tbl_user_wishlist` ADD CONSTRAINT FK_tbluserwishlist_tbluserproductid FOREIGN KEY (tbl_user_product_id) REFERENCES tbl_user_product(tbl_user_product_id);

