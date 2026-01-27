query 50167 "QueryItem"
{
    Caption = 'QueryItemS';
    QueryType = Normal;

    elements
    {
        dataitem(SupplierManagement; "Supplier Management")
        {
            column(No; "No") { }
            column(Description; "(Description") { }
            column(Type; "Type") { }
             column(UnitPrice; "UnitPrice") { }
              column(UnitCost; "UnitCost"){}
            column(Inventory; "Inventory") { }

        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
