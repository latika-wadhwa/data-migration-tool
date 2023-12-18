CREATE SET TABLE tpch.ppl_data_types ,FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO,
     MAP = TD_MAP1
     (
      RECORD_ID DECIMAL(20,0) NOT NULL,
      BIGINT_FIELD BIGINT,
      BYTEINT_FIELD BYTEINT,
      CHAR_FIELD CHAR(2048) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,

      DATE_FIELD DATE FORMAT 'YYYY-MM-DD',
      DECIMAL_FIELD_1 DECIMAL(13,13) DEFAULT NULL ,
      DECIMAL_FIELD_2 DECIMAL(18,9),
      DECIMAL_FIELD_3 DECIMAL(20,18),
      DECIMAL_FIELD_4 DECIMAL(38,10),
      DECIMAL_FIELD_5 DECIMAL(38,12),
      DECIMAL_FIELD_6 DECIMAL(38,9),
      FLOAT_FIELD FLOAT,
      INTEGER_FIELD INTEGER NOT NULL,
      JSON_FIELD JSON(5000) CHARACTER SET UNICODE,
      NUMBER_FIELD_1 NUMBER,
      NUMBER_FIELD_2 NUMBER(38,4),
      SMALLINT_FIELD SMALLINT,
      TIMESTAMP_FIELD_1 TIMESTAMP(0) FORMAT 'yyyy-mm-ddbhh:mi:ss' NOT NULL,
      TIMESTAMP_FIELD_2 TIMESTAMP(3),
      TIMESTAMP_FIELD_3 TIMESTAMP(6) WITH TIME ZONE,
      VARBYTE_FIELD VARBYTE(1024),
      VARCHAR_FIELD VARCHAR(16000) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( RECORD_ID );