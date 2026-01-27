report 50165 SupplierReport
{
    ApplicationArea = All;
    Caption = 'SupplierReport';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Supplier Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(SupplierManagement; "Supplier Management")
        {
            column(SupplierID; "Supplier ID")
            {
            }
            column(SupplierName; "Supplier Name")
            {
            }
            column(SendEmail; "Send Email")
            {
            }
            column(ProductName; "Product Name")
            {
            }
            column(CreditLimit; "Credit Limit")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
