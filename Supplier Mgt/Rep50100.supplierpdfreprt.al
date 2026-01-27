report 50160 "Supplier PDF Report"
{
    Caption = 'Supplier PDF Report';
    UsageCategory = None;
    ApplicationArea = All;

    DefaultRenderingLayout = RdlcLayout;

    Dataset
    {
        dataitem(SupplierMgmt; "Supplier Management")
        {
            column(SupplierID; "Supplier ID") { }
            column(SupplierName; "Supplier Name") { }
            column(RegistrationDate; "Registration Date") { }
            column(ProductCode; "Product Code") { }
            column(ProductName; "Product Name") { }
            column(ContractDuration; "Contract Duration (Months)") { }
            column(CreditLimit; "Credit Limit") { }
            column(SupplierReference; "Supplier Refrence") { }
            // column(Balance; "Balance LCY") { } // optional       
        }
    }

    rendering
    {
        layout(RdlcLayout)
        {
            Type = RDLC;
            LayoutFile = 'SupplierReport.rdlc';
        }
    }
}
