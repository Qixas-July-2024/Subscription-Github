page 50104 VNI_TestList
{
    ApplicationArea = All;
    Caption = 'VNI_TestList';
    PageType = List;
    SourceTable = VNI_Test;
    UsageCategory = ReportsAndAnalysis;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
}
