// page 50164 "Supplier HTML Viewer"
// {
//     PageType = UserControlHost;
//     ApplicationArea = All;
//     SourceTable = "Supplier Management";
//     UsageCategory = ReportsAndAnalysis;
//     Caption = 'Supplier HTML Viewer';

//     layout
//     {
//         usercontrol(WebViewer; "WebPageViewer")
//         {
//             ApplicationArea = All;
//         }
//     }

//     trigger OnOpenPage()
//     begin
//         // Note: ControlAddInReady is better for ensuring the control is ready,
//         // but OnOpenPage can be used to call methods if supported
//         CurrPage.WebViewer.SetContent(Rec."Supplier HTML");
//     end;
// }
