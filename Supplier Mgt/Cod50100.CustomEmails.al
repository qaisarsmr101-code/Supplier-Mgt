codeunit 50151 "QAISAR CUstom Email"
{
    procedure SendSimpleEmail()
    begin
        if Confirm('Do you want to send Email With Old Style ? ')
        then
            SimpleEmailOldStyle()
        else
            SendSimpleEmailNewStyle();
    end;

    local procedure SimpleEmailOldStyle()
    var
        tempEmailItem: Record "Email Item" temporary;
        EmailScenrio: Enum "Email Scenario";
    begin
        TempEmailItem."Send to" := 'Qaisersmr101@gmail.com';
        TempEmailItem."Subject" := 'Test Emai';
        TempEmailItem.SetBodyText := 'This is Test Email ';
        tempEmailItem.Send(true, EmailScenrio::"Purchase Order")
    end;

    local procedure SendSimpleEmailNewStyle()
    var
        EmailMessage: Codeunit "Email Message";
        EmailScenrio: Enum "Email Scenario";
        Email: Codeunit Email;
    begin
        EmailMessage.Create('Qaisersmr101@gmail.com', 'Test Email', 'This Is Test Email');
        Email.Send(EmailMessage, EmailScenrio::Default)

    end;

}
