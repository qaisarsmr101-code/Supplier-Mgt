report 50163 "Item Report"
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Item Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(Type; "Type")
            {
            }
            column(UnitsperParcel; "Units per Parcel")
            {
            }
            column(Description2; "Description 2")
            {
            }
            column(DutyDue; "Duty Due %")
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
