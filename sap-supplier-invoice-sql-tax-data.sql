CREATE TABLE `sap-supplier-invoice-tax-data`
(
    `SupplierInvoice`         varchar(10) DEFAULT NULL,
    `FiscalYear`              int(4) DEFAULT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `TaxAmount`               float(13) DEFAULT NULL,
    `TaxBaseAmountInTransCrcy` float(13) DEFAULT NULL,
    PRIMARY KEY (`SupplierInvoice`, `FiscalYear`),
    CONSTRAINT `SupplierInvoice_fk` FOREIGN KEY (`SupplierInvoice`) REFERENCES `sap-supplier-invoice-header-data` (`SupplierInvoice`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
