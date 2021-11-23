CREATE TABLE `sap-supplier-invoice-header-data`
(
    `SupplierInvoice`         varchar(10) DEFAULT NULL,
    `FiscalYear`              int(4) DEFAULT NULL,
    `CompanyCode`             varchar(4) DEFAULT NULL,
    `DocumentDate`            date DEFAULT NULL,
    `PostingDate`             date DEFAULT NULL,
    `SupplierInvoiceIDByInvcgParty` varchar(16) DEFAULT NULL,
    `InvoicingParty`          varchar(10) DEFAULT NULL,
    `DocumentCurrency`        varchar(5) DEFAULT NULL,
    `InvoiceGrossAmount`      float(13) DEFAULT NULL,
    `DocumentHeaderText`      varchar(25) DEFAULT NULL,
    `PaymentTerms`            varchar(4) DEFAULT NULL,
    `DueCalculationBaseDate`  date DEFAULT NULL,
    `NetPaymentDays`          int(3) DEFAULT NULL,
    `PaymentBlockingReason`   varchar(1) DEFAULT NULL,
    `AccountingDocumentType`  varchar(2) DEFAULT NULL,
    `BPBankAccountInternalID` varchar(4) DEFAULT NULL,
    `SupplierInvoiceStatus`   varchar(1) DEFAULT NULL,
    `DirectQuotedExchangeRate` float(9) DEFAULT NULL,
    `SupplyingCountry`        varchar(3) DEFAULT NULL,
    `PaymentMethod`           varchar(1) DEFAULT NULL,
    `InvoiceReference`        varchar(10) DEFAULT NULL,
    `SupplierPostingLineItemText` varchar(50) DEFAULT NULL,
    `TaxIsCalculatedAutomatically` varchar(1) DEFAULT NULL,
    `BusinessArea`            varchar(4) DEFAULT NULL,
    `SupplierInvoiceIsCreditMemo` varchar(1) DEFAULT NULL,
    `ReverseDocument`         varchar(10) DEFAULT NULL,
    `ReverseDocumentFiscalYear` int(4) DEFAULT NULL,
    PRIMARY KEY (`SupplierInvoice`, `FiscalYear`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;