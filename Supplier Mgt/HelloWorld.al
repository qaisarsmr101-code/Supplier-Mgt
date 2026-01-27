table 50140 "Supplier Management"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Supplier ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Supplier Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Registration Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(4; "Product Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Product Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(6; "Contract Duration (Months)"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(7; "Credit Limit"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(8; "Send Email"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(9; "Supplier Refrence"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        // field(10; "Balance (LCY)"; Integer)
        // {
        //     DataClassification = CustomerContent;
        // }
        field(11; "Supplier PDF "; Blob)
        {
            DataClassification = CustomerContent;
        }
        field(12; "Reference ID"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(13; "Refrence Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(14; "Refrence Commapny"; Text[10])
        {
            DataClassification = CustomerContent;
        }
        field(15; "Refrence Code"; Text[30])
        {
            DataClassification = CustomerContent;
        }

        field(16; "No"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(17; "(Description"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(18; "Type"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(19; "UnitPrice"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(20; "UnitCost"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(21; "Inventory"; Text[30])
        {
            DataClassification = CustomerContent;
        }


    }

    keys
    {
        key(PK; "Supplier ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Message('Supplier inserted: %1', "Supplier Name");
    end;
}
