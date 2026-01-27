pageextension 50141 "Supplier Card" extends "Supplier Management list"
{
    layout
    {
        addlast(Content)
        {
            group(SupplierGroup)
            {
                field("Supplier Management list"; Rec."Supplier PDF ")
                {
                    ApplicationArea = All;
                }
            }
        }
    }


}


