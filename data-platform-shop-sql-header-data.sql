CREATE TABLE `data_platform_shop_header_data`
(
  `Shop`                             int(16) NOT NULL,
  `ShopType`                         varchar(4) NOT NULL,
  `ShopOwner`                        int(12) NOT NULL,
  `ShopOwnerBusinessPartnerRole`     varchar(40) NOT NULL,
  `PersonResponsible`                varchar(40) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityStartTime`                time NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `ValidityEndTime`                  time NOT NULL,
  `Description`                      varchar(60) NOT NULL,
  `LongText`                         varchar(1000) NOT NULL,
  `Introduction`                     varchar(200) DEFAULT NULL,
  `Site`                             int(16) NOT NULL,
  `Project`                          int(16) DEFAULT NULL,
  `WBSElement`                       int(8) DEFAULT NULL,
  `Tag1`                             varchar(40) DEFAULT NULL,
  `Tag2`                             varchar(40) DEFAULT NULL,
  `Tag3`                             varchar(40) DEFAULT NULL,
  `Tag4`                             varchar(40) DEFAULT NULL,
  `PointConsumptionType`             varchar(4) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Shop`),

    CONSTRAINT `DPFMShopHeaderDataShopType_fk` FOREIGN KEY (`ShopType`) REFERENCES `data_platform_shop_type_shop_type_data` (`ShopType`),
    CONSTRAINT `DPFMShopHeaderDataShopOwner_fk` FOREIGN KEY (`ShopOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMShopHeaderDataShopOwnerBPRole_fk` FOREIGN KEY (`ShopOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMShopHeaderDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`),
    CONSTRAINT `DPFMShopHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMShopHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMShopHeaderDataPointConsumptionType_fk` FOREIGN KEY (`PointConsumptionType`) REFERENCES `data_platform_point_consumption_type_point_consumption_type_data` (`PointConsumptionType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
