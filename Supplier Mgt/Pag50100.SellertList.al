// page 50241 "Seller List"
// {
//     PageType = List;
//     SourceTable = "Managment";
//     ApplicationArea = All;

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field("Student ID"; Rec."Student ID") {

//                  }
//                 field("Name"; Rec."StudentName") { }
//                 field("Date of Birth"; Rec."Date of Birth") { }
//                 field("Course Code"; Rec."Course Code") { }
//                 field("age"; Rec."age")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(processing)
//         {
//             action(AddStudent)
//             {
//                 Caption = 'Add Student';
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 begin
//                     Message('Add Student action clicked');
//                 end;
//             }

//             action(CalcAgeCategory)
//             {
//                 Caption = 'Calculate Age Category';
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 var
//                     StuMgmt: Codeunit "StudentAgeCategory 2";
//                     Category: Text[50];
//                 begin
//                     Category := StuMgmt.GetAgeCategory(Rec."Date of Birth");
//                     Message('Age Category: %1', Category);
//                 end;
//             }
//         }
//     }
// }
