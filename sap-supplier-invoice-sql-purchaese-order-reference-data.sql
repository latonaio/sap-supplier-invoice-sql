CREATE TABLE `sap-supplier-invoice-purchaese-order-reference-data`
(
    `SupplierInvoice`         varchar(10) DEFAULT NULL,
    `FiscalYear`              varchar(4) DEFAULT NULL,
    `SupplierInvoiceItem`     varchar(6) DEFAULT NULL,
    `PurchaseOrder`           varchar(10) DEFAULT NULL,
    `PurchaseOrderItem`       varchar(5) DEFAULT NULL,
    `Plant`                   varchar(4) DEFAULT NULL,
    `TaxCode`                 varchar(2) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `SupplierInvoiceItemAmount` varchar(13) DEFAULT NULL,
    `PurchaseOrderQuantityUnit` varchar(3) DEFAULT NULL,
    `QuantityInPurchaseOrderUnit` varchar(13) DEFAULT NULL,
    `PurchaseOrderPriceUnit`  varchar(3) DEFAULT NULL,
    `QtyInPurchaseOrderPriceUnit` varchar(13) DEFAULT NULL,
    `SupplierInvoiceItemText` varchar(50) DEFAULT NULL,
    `PurchasingDocumentItemCategory` varchar(1) DEFAULT NULL,
    PRIMARY KEY (`SupplierInvoice`, `FiscalYear`, `SupplierInvoiceItem`),
    CONSTRAINT (`SupplierInvoice_fk`, `FiscalYear_fk`) FOREIGN KEY (`SupplierInvoice_fk`, `FiscalYear_fk`) REFERENCES `sap-supplier-invoice-header-data` (`SupplierInvoice_fk`, `FiscalYear_fk`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
