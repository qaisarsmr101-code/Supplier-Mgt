table 50147 "Enrollment"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Enrollment ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Enrollment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Enrollment ID")
        {
            Clustered = true;
        }
        key(StudentCourse; "Student ID", "Course Code") { }
    }
}
