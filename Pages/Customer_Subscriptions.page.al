page 50102 "BCT Customer Subscriptions"
{
    Caption = 'Customer Subscriptions';
    PageType = List;
    SourceTable = "BCT Customer Subscription";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer No';
                }
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
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Start Date';
                }
                field("Last Invoice Date"; Rec."Last Invoice Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Last Invoice Date';
                }
                field("Next Invoicing Date"; Rec."Next Invoicing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Next Invoicing Date';
                }
                field("Cancelled Date"; Rec."Cancelled Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Cancelled Date';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Active';
                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Invoicing Price';
                }
            }
        }
    }
}