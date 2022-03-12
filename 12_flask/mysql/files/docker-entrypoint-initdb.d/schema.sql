CREATE TABLE large_scale_establishments (
    uid               INT(11)      PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'DB内でのユニークなID',
    jis               INT(11)      DEFAULT NULL                        COMMENT '大口事業所の所在地のJISコード',
    name_kana         VARCHAR(255) DEFAULT NULL                        COMMENT '大口事業所名（カナ）',
    name_kanji        VARCHAR(255) DEFAULT NULL                        COMMENT '大口事業所名（漢字）',
    prefectures       VARCHAR(255) DEFAULT NULL                        COMMENT '都道府県名（漢字）',
    city              VARCHAR(255) DEFAULT NULL                        COMMENT '市区町村名（漢字）',
    town_area         VARCHAR(255) DEFAULT NULL                        COMMENT '町域名（漢字）',
    address           VARCHAR(255) DEFAULT NULL                        COMMENT '小字名、丁目、番地等（漢字）',
    individual_number VARCHAR(255) DEFAULT NULL                        COMMENT '大口事業所個別番号',
    old_zip_code      VARCHAR(255) DEFAULT NULL                        COMMENT '旧郵便番号',
    handling_station  VARCHAR(255) DEFAULT NULL                        COMMENT '取扱局（漢字）（40バイト）',
    display_type      VARCHAR(255) DEFAULT NULL                        COMMENT '個別番号の種別の表示',
    multiple_number   VARCHAR(255) DEFAULT NULL                        COMMENT '複数番号の有無',
    modifycode        INT(11)      DEFAULT NULL                        COMMENT '修正コード'
);
