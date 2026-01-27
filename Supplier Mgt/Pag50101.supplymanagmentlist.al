// page 50141 "Supplier Management List"
// {
//     PageType = Card;
//     ApplicationArea = All;
//     SourceTable = "Supplier Management";
//     UsageCategory = ReportsAndAnalysis;
//     Caption = 'Supplier Management List';

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field("Supplier ID"; Rec."Supplier ID") { }
//                 field("Supplier Name"; Rec."Supplier Name") { }
//                 field("Registration Date"; Rec."Registration Date") { }
//                 field("Product Code"; Rec."Product Code") { }
//                 field("Product Name"; Rec."Product Name") { }
//                 field("Contract Duration (Months)"; Rec."Contract Duration (Months)") { }
//                 field("Credit Limit"; Rec."Credit Limit") { }
//                 field("Supplier Refrence"; Rec."Supplier Refrence") { }
//                 field("Supplier PDF"; Rec."Supplier PDF ")
//                 {
//                     ApplicationArea = All;
//                     ToolTip = 'Upload supplier PDF document';
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action("Insert Test Supplier")
//             {
//                 Caption = 'Insert Test Supplier';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     Sup: Record "Supplier Management";
//                 begin
//                     Sup.Init();
//                     Sup."Supplier ID" := '201';
//                     Sup."Supplier Name" := 'Ali Traders';
//                     Sup."Registration Date" := Today;
//                     Sup."Product Code" := 'P001';
//                     Sup."Product Name" := 'Smart watches';
//                     Sup."Contract Duration (Months)" := 12;
//                     Sup."Credit Limit" := 500000;
//                     Sup.Insert();
//                 end;
//             }
//             action("Print Supplier PDF")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Print Supplier PDF';
//                 Image = Print;

//                 trigger OnAction()
//                 var
//                     SupplierReport: Report "Supplier PDF report";
//                 begin
//                     SupplierReport.RunModal();
//                 end;
//             }

//             action(UploadSupplierPDF)
//             {
//                 Caption = 'Upload PDF';
//                 ApplicationArea = All;
//                 Image = Import;

//                 trigger OnAction()
//                 var
//                     InStream: InStream;
//                     SelectedFileName: Text;
//                 begin
//                     if UploadIntoStream('Select PDF file', '', 'PDF files (SMSP.pdf)|*.pdf', SelectedFileName, InStream) then begin
//                         Rec."Supplier PDF ".ImportStream(InStream, SelectedFileName);
//                         Rec.Modify(true);
//                         Message('PDF "%1" uploaded successfully!', SelectedFileName);
//                     end;
//                 end;
//             }


//             action("Filter Active Suppliers")
//             {
//                 Caption = 'Filter Active Suppliers';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     SupRec: Record "Supplier Management";
//                 begin
//                     SupRec.Reset();

//                     SupRec.SetRange("Credit Limit", 100000, 99999999);

//                     SupRec.SetRange("Contract Duration (Months)", 0, 12);

//                     SupRec.SetRange("Supplier Name", 'A', 'Azzzzzzzz');

//                     Page.Run(Page::"Supplier Management List", SupRec);
//                 end;
//             }

//             action("SendMail")
//             {
//                 Caption = 'Send Email';
//                 ApplicationArea = All;
//                 Image = Email;

//                 trigger OnAction()
//                 var
//                     EmailMessage: Codeunit "Email Message";
//                     Email: Codeunit Email;
//                 begin
//                     EmailMessage.Create(
//                         'qAISERSMR101@GMAIL.COM',

//                         'OutLook Notification',
//                         'Hellow I am Qaisar '
//                     );
//                     Email.Send(EmailMessage, Enum::"Email Scenario"::Default)
//                 end;
//             }
//         }
//     }
// }







// page 50141 "Supplier Management List"
// {
//     PageType = Card;
//     ApplicationArea = All;
//     SourceTable = "Supplier Management";
//     UsageCategory = ReportsAndAnalysis;
//     Caption = 'Supplier Management List';

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field("Supplier ID"; Rec."Supplier ID") { }
//                 field("Supplier Name"; Rec."Supplier Name") { }
//                 field("Registration Date"; Rec."Registration Date") { }
//                 field("Product Code"; Rec."Product Code") { }
//                 field("Product Name"; Rec."Product Name") { }
//                 field("Contract Duration (Months)"; Rec."Contract Duration (Months)") { }
//                 field("Credit Limit"; Rec."Credit Limit") { }
//                 field("Supplier Refrence"; Rec."Supplier Refrence") { }
//                 field("Supplier PDF"; Rec."Supplier PDF ")
//                 {
//                     ApplicationArea = All;
//                     ToolTip = 'Upload supplier PDF document';
//                 }

//             }
//         }
//     }


//     actions
//     {
//         area(Processing)
//         {
//             action("Insert Test Supplier")
//             {
//                 Caption = 'Insert Test Supplier';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     Sup: Record "Supplier Management";
//                 begin
//                     Sup.Init();
//                     Sup."Supplier ID" := '201';
//                     Sup."Supplier Name" := 'Ali Traders';
//                     Sup."Registration Date" := Today;
//                     Sup."Product Code" := 'P001';
//                     Sup."Product Name" := 'Smart watches';
//                     Sup."Contract Duration (Months)" := 12;
//                     Sup."Credit Limit" := 500000;
//                     Sup.Insert();
//                     Message('Test supplier inserted');
//                 end;
//             }

//             action("Print Supplier PDF")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Print Supplier PDF';
//                 Image = Print;

//                 trigger OnAction()
//                 var
//                     SupplierReport: Report "Supplier PDF report";
//                 begin
//                     SupplierReport.RunModal();
//                 end;
//             }

//             action("UploadSupplierPDF")
//             {
//                 Caption = 'Upload PDF';
//                 ApplicationArea = All;
//                 Image = Import;

//                 trigger OnAction()
//                 var
//                     UploadStream: InStream;
//                     BlobStream: OutStream;
//                     FileName: Text;
//                 begin
//                     // Upload PDF into temporary stream
//                     if UploadIntoStream('Select PDF file', '', 'PDF files (*.pdf)|*.pdf', FileName, UploadStream) then begin
//                         // Create OutStream from Blob field
//                         Rec."Supplier PDF ".CreateOutStream(BlobStream);

//                         // Copy uploaded stream into Blob
//                         CopyStream(BlobStream, UploadStream);

//                         // Save changes
//                         Rec.Modify(true);

//                         Message('PDF "%1" uploaded successfully!', FileName);
//                     end;
//                 end;
//             }


//             action("Filter Active Suppliers")
//             {
//                 Caption = 'Filter Active Suppliers';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     SupRec: Record "Supplier Management";
//                 begin
//                     SupRec.Reset();
//                     SupRec.SetRange("Credit Limit", 100000, 99999999);
//                     SupRec.SetRange("Contract Duration (Months)", 0, 12);
//                     SupRec.SetRange("Supplier Name", 'A', 'Azzzzzzzz');
//                     Page.Run(Page::"Supplier Management List", SupRec);
//                 end;
//             }

//             action("SendMail")
//             {
//                 Caption = 'Send Email';
//                 ApplicationArea = All;
//                 Image = Email;

//                 trigger OnAction()
//                 var
//                     EmailMessage: Codeunit "Email Message";
//                     Email: Codeunit Email;
//                     InStr: InStream;
//                     FileName: Text;
//                 begin
//                     Rec."Supplier PDF ".CreateInStream(InStr);

//                     // Check if PDF has content
//                     if InStr.Length = 0 then
//                         Error('No PDF uploaded for this supplier.');

//                     FileName := 'SMSP_' + Rec."Supplier ID" + '.pdf';

//                     // Create email message
//                     EmailMessage.Create(
//                         'QAISERSMR101@GMAIL.COM',          // Recipient
//                         'SMSP.PDF Attached',              // Subject
//                         'Hello, please find the supplier PDF attached.' // Body
//                     );

//                     // Attach the PDF
//                     EmailMessage.AddAttachment('Supplier PDF', FileName, InStr);

//                     // Send email using the Email codeunit
//                     Email.Send(EmailMessage);

//                     Message('Email sent successfully');
//                 end;
//             }

//         }
//     }
// }





page 50141 "Supplier Management List"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Supplier Management";
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Supplier Management List';

    layout
    {
        area(Content)
        {
            // Repeater for supplier fields
            repeater(Group)
            {
                field("Supplier ID"; Rec."Supplier ID") { }
                field("Supplier Name"; Rec."Supplier Name") { }
                field("Registration Date"; Rec."Registration Date") { }
                field("Product Code"; Rec."Product Code") { }
                field("Product Name"; Rec."Product Name") { }
                field("Contract Duration (Months)"; Rec."Contract Duration (Months)") { }
                field("Credit Limit"; Rec."Credit Limit") { }
                field("Supplier Refrence"; Rec."Supplier Refrence") { }
                field("Supplier PDF"; Rec."Supplier PDF ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Upload supplier PDF document';
                }
            }

            group("HTML Preview")
            {
                Caption = 'HTML Preview';
                usercontrol(html; htmlviewer)
                {
                    ApplicationArea = All;
                    trigger ControlReady()
                    begin
                        CurrPage.html.Render(
                            '<div style="font-family: Arial; padding: 20px; background-color: #f5f5f5; border-radius: 8px;">' +
                            '<h2 style="color: #333;">📋 Supplier Portal</h2>' +
                            '<hr style="border: none; border-top: 2px solid #0066cc; margin: 10px 0;">' +
                            '<p><b>Supplier:</b> ' + Rec."Supplier Name" + '</p>' +
                            '<p><b>Product:</b> ' + Rec."Product Name" + '</p>' +
                            '<p><b>Credit Limit:</b> PKR ' + Format(Rec."Credit Limit") + '</p>' +
                            '<p><b>Contract Duration:</b> ' + Format(Rec."Contract Duration (Months)") + ' months</p>' +
                            '<hr style="border: none; border-top: 1px solid #ddd; margin: 15px 0;">' +
                            '<h3>Quick Links:</h3>' +
                            '<ul style="list-style-type: none; padding: 0;">' +
                            '<li>📚 <a href="http://www.youtube.com" style="color: #0066cc; text-decoration: none;">Learning Resources</a></li>' +
                            '<li>📧 <a href="mailto:QAISERSMR101@GMAIL.COM" style="color: #0066cc; text-decoration: none;">Contact Support</a></li>' +
                            '<li>📄 <a href="https://www.google.com" style="color: #0066cc; text-decoration: none;">Documentation</a></li>' +
                            '</ul>' +
                            '<p style="font-size: 12px; color: #999; margin-top: 20px;">Last updated: ' + Format(Today()) + '</p>' +
                            '</div>'
                        );
                    end;
                }
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
                    Sup: Record "Supplier Management";
                begin
                    Sup.Init();
                    Sup."Supplier ID" := '201';
                    Sup."Supplier Name" := 'Ali Traders';
                    Sup."Registration Date" := Today;
                    Sup."Product Code" := 'P001';
                    Sup."Product Name" := 'Smart watches';
                    Sup."Contract Duration (Months)" := 12;
                    Sup."Credit Limit" := 500000;
                    Sup.Insert();
                    Message('Test supplier inserted');
                end;
            }

            action("Print Supplier PDF")
            {
                ApplicationArea = All;
                Caption = 'Print Supplier PDF';
                Image = Print;

                trigger OnAction()
                var
                    SupplierReport: Report "Supplier PDF report";
                begin
                    SupplierReport.RunModal();
                end;
            }

            action("UploadSupplierPDF")
            {
                Caption = 'Upload PDF';
                ApplicationArea = All;
                Image = Import;

                trigger OnAction()
                var
                    UploadStream: InStream;
                    BlobStream: OutStream;
                    FileName: Text;
                begin
                    if UploadIntoStream('Select PDF file', '', 'PDF files (*.pdf)|*.pdf', FileName, UploadStream) then begin
                        Rec."Supplier PDF ".CreateOutStream(BlobStream);
                        CopyStream(BlobStream, UploadStream);
                        Rec.Modify(true);
                        Message('PDF "%1" uploaded successfully!', FileName);
                    end;
                end;
            }

            action("Filter Active Suppliers")
            {
                Caption = 'Filter Active Suppliers';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SupRec: Record "Supplier Management";
                begin
                    SupRec.Reset();
                    SupRec.SetRange("Credit Limit", 100000, 99999999);
                    SupRec.SetRange("Contract Duration (Months)", 0, 12);
                    SupRec.SetRange("Supplier Name", 'A', 'Azzzzzzzz');
                    Page.Run(Page::"Supplier Management List", SupRec);
                end;
            }

            action("SendMail")
            {
                Caption = 'Send Email';
                ApplicationArea = All;
                Image = Email;


                trigger OnAction()
                var
                    EmailMessage: Codeunit "Email Message";
                    Email: Codeunit Email;
                    InStr: InStream;
                    FileName: Text;
                begin
                    Rec."Supplier PDF ".CreateInStream(InStr);

                    if InStr.Length = 0 then
                        Error('No PDF uploaded for this supplier.');

                    FileName := 'SMSP_' + Rec."Supplier ID" + '.pdf';

                    EmailMessage.Create(
                        'QAISERSMR101@GMAIL.COM',
                        'SMSP.PDF Attached',
                        'Hello, please find the supplier PDF and Send Me All these PDF Reated to Supply Managment.'
                    );


                    EmailMessage.AddAttachment('Supplier PDF', FileName, InStr);

                    Email.Send(EmailMessage);


                    Message('Email sent successfully');
                end;
            }
        }
    }
}


//     trigger OnAfterGetRecord()
//     begin
//         CurrPage.SupplierHtmlViewer.SetHtml(
//             '<h2>Supplier Details</h2>' +
//             '<p><b>Name:</b> ' + Rec."Supplier Name" + '</p>' +
//             '<p><b>Product:</b> ' + Rec."Product Name" + '</p>' +
//             '<p><b>Credit Limit:</b> ' + Format(Rec."Credit Limit") + '</p>'
//         );
//     end;
// }

