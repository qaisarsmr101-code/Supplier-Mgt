table 50144 "Product "
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Course Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Duration (Months)"; Integer)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Course Code")
        {
            Clustered = true;
        }
    }


}
