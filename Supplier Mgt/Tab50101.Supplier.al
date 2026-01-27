table 50141 "Supplier"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { DataClassification = CustomerContent; }
        field(2; "Name"; Text[100]) { DataClassification = CustomerContent; }
        field(3; "Contact No."; Text[30]) { DataClassification = CustomerContent; }
        field(4; "City"; Text[50]) { DataClassification = CustomerContent; }
        field(5; "SupplierDocument"; Blob)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Discount Code"; Text[40])
        {
            DataClassification = CustomerContent;
        }
        field(7; "Refrence Code"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(8; "Gift Code"; Text[10])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.") { Clustered = true; }
    }

    trigger OnInsert()
    begin
        Message('Supplier inserted: %1', "Name");
    end;
}
