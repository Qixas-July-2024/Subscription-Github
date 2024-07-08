page 50103 "BCT Subscription Factbox"
{
    Caption = 'Subscription Factbox';
    PageType = Listpart;
    SourceTable = "BCT Customer Subscription";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Subscription Code"; Rec."Subscription Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Subscription Code';
                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Item No';
                }
                field("Cancelled Date"; Rec."Cancelled Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Cancelled Date';
                }
            }
        }
    }
}