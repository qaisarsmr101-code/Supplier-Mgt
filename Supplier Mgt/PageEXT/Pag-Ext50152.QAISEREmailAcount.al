pageextension 50152 "Simple Email Acount" extends "Email Accounts"
{
    actions
    {
        addlast(Processing)
        {
            action(SimpleEmail)
            {
                ApplicationArea = ALL;
                Caption = 'Simple Email ';
                ToolTip = 'Execute Simple Email';
                trigger OnAction()
                var
                    QAISARCustomEmail: Codeunit "QAISAR CUstom Email";

                begin
                    QAISARCustomEmail.SendSimpleEmail
                end;
            }


        }
    }
}
