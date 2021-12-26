CREATE TABLE `sap_supplier_invoice_tax_data`
(
    `SupplierInvoice`         varchar(10) NOT NULL,
    `FiscalYear`              varchar(4) NOT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `TaxAmount`               varchar(13) DEFAULT NULL,
    `TaxBaseAmountInTransCrcy` varchar(13) DEFAULT NULL,
    
    PRIMARY KEY (`SupplierInvoice`, `FiscalYear`),
    CONSTRAINT (`SAPSupplierInvoiceTaxData_fk`) FOREIGN KEY (`SupplierInvoice`, `FiscalYear`) REFERENCES `sap_supplier_invoice_header_data` (`SupplierInvoice`, `FiscalYear`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
