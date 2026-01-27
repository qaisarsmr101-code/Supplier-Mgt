page 50142 "Supplier List"
{
    PageType = Card;
    SourceTable = Supplier;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Supplier List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { }
                field("Name"; Rec."Name") { }
                field("Contact No."; Rec."Contact No.") { }
                field("City"; Rec."City") { }
                //field("Balance (LCY)" ; REC."Balance LCY"){



            }
        }
    }


    actions
    {
        area(Processing)
        {
            action("Insert Test Supplier")
            {
                Caption = 'Insert Test Supplier';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Sup: Record Supplier;
                begin
                    Sup.Init();
                    Sup."No." := '101';
                    Sup."Name" := 'Ali Traders';
                    Sup."Contact No." := '0300-1234567';
                    Sup."City" := 'Gilgit';
                    Sup.Insert(); // triggers OnInsert
                end;
            }
        }
    }
}
