codeunit 50145 "StudentAgeCategory 2"
{
    procedure GetAgeCategory(BirthDate: Date): Text[50]
    var
        Age: Integer;
        TodayDate: Date;
    begin
        if BirthDate = 0D then
            exit('Unknown'); // Return a default category or handle as needed

        TodayDate := Today(); // Use system date
        Age := CalculateAge(BirthDate, TodayDate);

        case Age of
            0 .. 5:
                exit('Preschool');
            6 .. 12:
                exit('Child');
            13 .. 19:
                exit('Teen');
            20 .. 150:
                exit('Adult');
            else
                exit('Invalid Age');
        end;
    end;

    local procedure CalculateAge(BirthDate: Date; CurrentDate: Date): Integer
    var
        Years: Integer;
    begin
        if BirthDate > CurrentDate then
            Error('Birth date %1 cannot be in the future.', BirthDate);

        Years := (CurrentDate - BirthDate) div 365; // Simplified age calculation
        exit(Years);
    end;
}