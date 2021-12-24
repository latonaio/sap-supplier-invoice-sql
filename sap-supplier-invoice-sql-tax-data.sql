CREATE TABLE `sap-supplier-invoice-tax-data`
(
    `SupplierInvoice`         varchar(10) DEFAULT NULL,
    `FiscalYear`              varchar(4) DEFAULT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `TaxAmount`               varchar(13) DEFAULT NULL,
    `TaxBaseAmountInTransCrcy` varchar(13) DEFAULT NULL,
    PRIMARY KEY (`SupplierInvoice`, `FiscalYear`),
    CONSTRAINT (`SupplierInvoice_fk`, `FiscalYear_fk`) FOREIGN KEY (`SupplierInvoice`, `FiscalYear`) REFERENCES `sap-supplier-invoice-header-data` (`SupplierInvoice`, `FiscalYear`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
