use bsp;

drop table man_manufacturer; 
drop table brd_brand; 
drop table sto_store_order; 
drop table sha_shipping_address; 
drop table sol_store_order_line_item; 
drop table sal_sales_order_line_item; 
drop table sao_sales_order; 
drop table dsr_dropshipper; 
drop table eba_ebay_authorization; 
drop table str_store; 
drop table drp_dropship_price; 
drop table sdi_store_dropship_item;
drop table wit_wishlist; 
drop table cdm_code_master; 
drop table goa_government_area; 
drop table img_image; 
drop table mor_monitor_result; 
drop table ofp_offer_price; 
drop table pck_package_info; 
drop table pdn_product_descrition; 
drop table prc_product_category; 
drop table pro_product; 
drop table spa_specific_attribute; 
drop table spv_specific_attribute_value; 
drop table sequence; 
drop table sys_andorra;
drop table sys_menu; 
drop table sys_user; 
drop table ull_user_login_logout_log; 
drop table par_parameter; 
drop table waa_wallet_account;
drop table waf_wallet_account_fund;
drop table wta_wallet_transaction_aduit; 
drop table wtr_wallet_transaction_record;

create table man_manufacturer (
  MAN_ID	int(11),
	NAME_EN	varchar(100),
	NAME_CN	varchar(100),
	GMC_REPORT_TYPE	varchar(2),
	GMC_REPORT_URL	varchar(255),
	DESCRIPTION	longtext,
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table brd_brand (
  BRD_ID	int(11),
	MAN_ID	int(11),
	NAME_EN	varchar(100),
	NAME_CN	varchar(100),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table sto_store_order (
  STO_ID	int(11),
	STR_ID	int(11),
	ORDER_ID	varchar(45),
	ORDER_CREATED_TIME	varchar(45),
	PAID_TIME	varchar(45),
	LAST_MODIFIED_TIME	varchar(45),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	PLATEFORM_TYPE	varchar(2),
	CANCEL_COMPLETE_DATE	varchar(45)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sha_shipping_address (
  CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	FAMILY_NAME	varchar(45),
	GIVEN_NAME	varchar(45),
	COUNTRY_NAME	varchar(45),
	COUNTRY_ISO_CD	varchar(45),
	STATE_OR_PROVINCE_NAME	varchar(45),
	STATE_OR_PROVINCE_CD	varchar(45),
	CITY_NAME	varchar(45),
	ADDRESS_LINE1	varchar(64),
	ADDRESS_LINE2	varchar(64),
	ADDRESS_LINE3	varchar(64),
	POSTAL_CD	varchar(45),
	CONTACT_PHONE_NO	varchar(45),
	EMAIL	varchar(45),
	STO_ID	int(11),
	CARRIER_NAME	varchar(100)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sol_store_order_line_item (
  SOL_ID	int(11),
	ORDER_ITEM_ID	varchar(45),
	STO_ID	int(11),
	SALES_PRICE	decimal(8,2),
	QTY	int(11),
	SKU_NO	varchar(45),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	BUYER_CHECKOUT_MESSAGE	text
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sal_sales_order_line_item (
  SAL_ID	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	SAO_ID	int(11),
	PRO_ID 	int(11),
	QTY	int(11),
	PRICE	decimal(8,2),
	SOL_ID	int(11),
	TRACKING_NO	varchar(45),
	WSP_NAME	varchar(45)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sao_sales_order (
  SAO_ID	int(11),
	CREATED_BY	varchar(50),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	MAN_ID	int(11),
	WAR_ID	int(11),
	SYNC_DATE	timestamp,
	PAYMENT_DATE	timestamp,
	PUSH_DATE	timestamp,
	TRACK_NO_DATE	timestamp,
	FULFILLMENT_DATE	timestamp,
	SETTLEMENT_DATE	timestamp,
	PRODUCT_AMOUNT	decimal(8,2),
	FREIGHT_COST	decimal(8,2),
	HANDLING_FEE	decimal(8,2),
	CUSTOMER_REMARK	varchar(300),
	ORDER_NO	varchar(45),
	ORDER_STS	varchar(45),
	REFUND_STS	varchar(45),
	DELIVERY_STS	varchar(45),
	STO_ID	int(11),
	LAST_FREIGHT_COST	decimal(8,2),
	CANCLE_TIME	timestamp,
	AUTO_PAY_STATUS	char(2),
	BUYER_CHECKOUT_MESSAGE	text,
	AUTO_PAY_TIME	varchar(5)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table dsr_dropshipper (
  DSR_ID	int(11),
	NAME	varchar(45),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	REGISTER_DATE	timestamp
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table eba_ebay_authorization (
  EBA_ID	int(11),
	STR_ID	int(11),
	APP_ID	varchar(255),
	SECRET_KEY	varchar(255),
	TOKEN	longtext,
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	EXP_DATE	datetime,
	CANCLE_DATE	datetime,
	ACCOUNT_ID	varchar(32)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table str_store (
  STR_ID	int(11),
	DSR_ID	int(11),
	PLATAEFORM_TYPE	varchar(2),
	STORE_NAME	varchar(45),
	STORE_STS_CD	varchar(45),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	STS_CD	char(1),
	REMARK	varchar(50)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table drp_dropship_price (
  DRP_ID	int(11),
	OFP_ID	int(11),
	DSR_ID	int(11),
	WAR_ID	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sdi_store_dropship_item (
  DIL_ID	int(11),
	PRO_ID	int(11),
	STR_ID	int(11),
	STORE_RETENTION	int(11),
	DROPSHIP_PRICE	decimal(10,2),
	DROPSHIP_STATUS	varchar(2),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	CALL_CNT	int(11),
	LAST_UPDATE_DATE	timestamp,
	REMARK	varchar(50),
	STS_CD	char(1),
	SHELF_STOCK	int(11),
	PREFER_DATE	timestamp
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table wit_wishlist (
  WIT_ID	int(11),
	DSR_ID	int(11),
	PRO_ID	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table cdm_code_master (
  CDM_ID	int(11),
	CODE_TYPE	varchar(16),
	DESCRIPTION	varchar(45),
	TYPE_CD	varchar(45),
	CODE_VAL	varchar(45),
	SEQ_NO	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table goa_government_area (
  GOA_ID	int(11),
	ZIP_CODE	varchar(16),
	STATE	varchar(255),
	STATE_SHORTHAND	varchar(10),
	CITY	varchar(255),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	CALL_CNT	int(11),
	LAST_UPDATE_DATE	timestamp,
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table img_image (
  IMG_ID	int(11),
	NAME	varchar(255),
	WIDTH	int(11),
	HEIGHT	int(11),
	URI	varchar(512),
	TYPE_CD	char(2),
	ENTITY_ID	int(11),
	ENTITY_CD	varchar(3),
	SEQ_NO	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table mor_monitor_result (
  MOR_ID	int(11),
	CLASS_NAME	varchar(100),
	JSON_STRING	varchar(500),
	CREATE_DATE	datetime,
	CREATE_BY	varchar(10),
	UPDATE_DATE	datetime,
	UPDATE_BY	varchar(10),
	REMARK	varchar(100),
	STS_CD	varchar(2)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table ofp_offer_price (
  OFP_ID	int(11),
	MAN_ID	int(11),
	EFFETIVE_START_DATE	timestamp,
	EFFECTIVE_END_DATE	timestamp,
	PRO_ID	int(11),
	PRICE	decimal(8,2),
	TYPE_CD	varchar(3),
	DSR_ID	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(200),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	PERIOD	varchar(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table pck_package_info (
  PCK_ID	int(11),
	WAR_ID	int(11),
	PRO_ID	int(11),
	TYPE_CD	char(1),
	WIDTH	decimal(7,2),
	HEIGHT	decimal(7,2),
	LENGTH	decimal(7,2),
	WEIGHT	decimal(5,2),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	HEAVY_CARGO	varchar(2),
	LOGISTICS_COMPANY	varchar(50)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table pdn_product_descrition (
  PDN_ID	int(11),
	PRO_ID	int(11),
	TYPE_CD	varchar(45),
	DESCRITION	longtext,
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table prc_product_category (
  PRC_ID	int(11),
	PRO_ID	int(11),
	CATEGORY_ID	varchar(45),
	CATEGORY_NAME	varchar(100),
	CATEGORY_PATH	varchar(1024),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	PLATEFORM_TYPE	varchar(2)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table pro_product (
  PRO_ID	int(11),
	SKU_CD	varchar(8),
	BRD_ID	int(11),
	MAN_ID	int(11),
	TITLE	varchar(255),
	UPC	varchar(15),
	EAN	varchar(13),
	MODEL	varchar(45),
	WARRANTY_DAY	varchar(45),
	RETAIL_PRICE	decimal(10,2),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1),
	MININUM_RETAIL_PRICE	decimal(10,2),
	REPLENISHMENT_PERIOD	int(11),
	KEY_WORDS	varchar(255),
	WARRANTY	text,
	TIME_UNIT	varchar(10),
	STOCKSETING	int(11)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table spa_specific_attribute (
  SPA_ID	int(11),
	PRO_ID	int(11),
	NAME_EN	varchar(45),
	NAME_CN	varchar(45),
	SEQ_NO	int(11),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table spv_specific_attribute_value (
  SPV_ID	int(11),
	SPA_ID	int(11),
	NAME_EN	varchar(100),
	NAME_CN	varchar(100),
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table sequence (
  name	varchar(50),
	current_value	int(11),
	increment	int(11),
	initial	varchar(10)
) engine=innodb charset=utf8 collate=utf8_general_ci;
		
create table sys_andorra(
  id	bigint(11),
	title	varchar(200),
	content	varchar(200),
	type	char(2),
	adurl	varchar(200),
	publisher	varchar(50),
	addtime	datetime,
	uptime	datetime,
	starttime	varchar(50),
	endtime	varchar(50),
	status	char(2),
	tourl	varchar(255)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sys_menu (
  MENU_ID	int(11),
	MENU_NAME	varchar(255),
	MENU_URL	varchar(255),
	PARENT_ID	varchar(100),
	MENU_ORDER	varchar(100),
	MENU_ICON	varchar(30),
	MENU_TYPE	varchar(10)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table sys_user (
  USER_ID	varchar(100),
	USERNAME	varchar(255),
	PASSWORD	varchar(255),
	NAME	varchar(255),
	RIGHTS	varchar(255),
	ROLE_ID	varchar(100),
	LAST_LOGIN	varchar(255),
	IP	varchar(100),
	STATUS	varchar(32),
	BZ	varchar(255),
	SKIN	varchar(100),
	EMAIL	varchar(32),
	NUMBER	varchar(100),
	PHONE	varchar(32),
	MAN_BUYER_ID	int(11)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table ull_user_login_logout_log (
  ULL_ID	int(11),
	USI_ID	varchar(32),
	TOKEN	varchar(45),
	TERMINAL_TYPE	varchar(2),
	OPERATING_TYPE	varchar(2),
	OPERATING_DATE	timestamp,
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table par_parameter (
  PAR_ID	int(11),
	PARAM_CD	varchar(200),
	PARAM_VALUE	varchar(500),
	DESCRIPTION	text,
	CREATED_BY	varchar(20),
	CREATION_DATE	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_DATE	timestamp,
	CALL_CNT	int(11),
	REMARK	varchar(50),
	STS_CD	char(1)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table waa_wallet_account (
  BUYER_ID	int(10),
	ACCOUNT_NAME	varchar(50),
	EMAIL	varchar(50),
	PASSWORD	varchar(256),
	ACTIVE_TIME	datetime,
	IS_ACTIVE	char(1),
	STATUS	tinyint(2),
	CREATE_BY	varchar(20),
	CREATE_TIME	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_TIME	timestamp,
	ACCOUNT_TYPE	int(11),
	HOLD_ORDER_TIME	char(2),
	AUTO_PAY_STATUS	varchar(2)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table waf_wallet_account_fund (
  BUYER_ID	int(10),
	AVAILABLE_MONEY	decimal(10,4),
	DEPOSITING_MONEY	decimal(10,4),
	WITHDRAWING_MONEY	decimal(10,4),
	CREATE_BY	varchar(20),
	CREATE_TIME	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_TIME	timestamp,
	CURRENCY	varchar(16)
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table wta_wallet_transaction_aduit (
  TRANSACTION_AUDIT_ID	int(10),
	BUYER_ID	int(10),
	TRANSACTION_ID	int(10),
	AVAILABLE_MONEY_BEFORE	decimal(10,4),
	DEPOSITING_MONEY_BEFORE	decimal(10,4),
	WITHDRAWING_MONEY_BEFORE	decimal(10,4),
	OPERATE_MONEY	decimal(10,4),
	OPERATE_TYPE	tinyint(2),
	AVAILABLE_MONEY_AFTER	decimal(10,4),
	DEPOSITING_MONEY_AFTER	decimal(10,4),
	WITHDRAWING_MONEY_AFTER	decimal(10,4),
	OPERATE_BY	varchar(20),
	STATUS	tinyint(2),
	CREATE_BY	varchar(20),
	CREATE_TIME	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_TIME	timestamp
) engine=innodb charset=utf8 collate=utf8_general_ci;

create table wtr_wallet_transaction_record(
  TRANSACTION_ID	int(10),
	BUYER_ID	int(10),
	BANK_CARD_ID	int(10),
	TRANSACTION_NUMBER	varchar(255),
	TRANSACTION_TYPE	tinyint(2),
	ACCOUNT_NAME	varchar(50),
	TRANSACTION_MONEY	decimal(10,4),
	COMMISSION	decimal(10,4),
	DISCOUNT_COMMISSION	decimal(10,4),
	TRANSACTION_METHOD	tinyint(2),
	COMPLETE_TIME	datetime,
	STATUS	tinyint(2),
	ACTUAL_MONEY	decimal(10,4),
	ACTUAL_COMMISSION	decimal(10,4),
	ACTUAL_DISCOUNT_COMMISSION	decimal(10,4),
	BALANCE	decimal(10,4),
	BUSINESS_ID	int(10),
	FINANCE_TYPE	tinyint(2),
	NOTE	varchar(1024),
	OPERATOR_NAME	varchar(64),
	OPERATOR_IP	varchar(32),
	CREATE_BY	varchar(20),
	CREATE_TIME	timestamp,
	LAST_UPDATE_BY	varchar(20),
	LAST_UPDATE_TIME	timestamp,
	BANK_RECEIPT_URL	varchar(255),
	EXCHANGE_RATE	decimal(10,4),
	TRANSACTION_DESC	varchar(255),
	FOREIGN_EXCHANGE_FEE	decimal(10,4),
	WITHDRAW_FEE	decimal(10,4)
) engine=innodb charset=utf8 collate=utf8_general_ci;

