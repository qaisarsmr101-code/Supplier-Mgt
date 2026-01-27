page 50168 "Query Item View"
{
    PageType = List;
    SourceTable = "Supplier Management";
    ApplicationArea = All;
    Caption = 'Query Item View';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No; Rec.No) { }
                field(Description; Rec."(Description") { }
                field(Type; Rec.Type) { }
                field(UnitPrice; Rec.UnitPrice) { }
                field(UnitCost; rec.UnitCost) { }
                field(Inventory; Rec.Inventory) { }
            }
        }
    }
}