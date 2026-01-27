table 50143 "Seller "
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Date of Birth"; Date)
        {
            trigger OnValidate()
            begin
                if "Date of Birth" <> 0D then begin
                    if "Date of Birth" > Today then
                        Error('Date of Birth cannot be in the future.');
                    "Age" := CalculateAge("Date of Birth");
                end else
                    "Age" := 0;
            end;
        }
        field(4; "Course Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Age"; Integer)
        {
            Caption = 'Age';
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }

    procedure CalculateAge(DateOfBirth: Date): Integer
    var
        Age: Integer;
    begin
        if DateOfBirth = 0D then
            exit(0);

        // Calculate age in years
        Age := Date2DMY(Today, 3) - Date2DMY(DateOfBirth, 3);

        // Adjust if birthday hasn't occurred this year
        if (Date2DMY(Today, 2) < Date2DMY(DateOfBirth, 2)) or
           ((Date2DMY(Today, 2) = Date2DMY(DateOfBirth, 2)) and
            (Date2DMY(Today, 1) < Date2DMY(DateOfBirth, 1))) then
            Age := Age - 1;

        exit(Age);
    end;

}