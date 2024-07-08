pageextension 50101 "BCT Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("BCT Subscription Customer"; Rec."BCT Subscription Customer")
            {
                ApplicationArea = All;
                ToolTip = 'BCT Subscription Customer';
            }
        }
        addfirst(FactBoxes)
        {
            part("BCT Subscription Factbox"; "BCT Subscription Factbox")
            {
                SubPageLink = "Customer No" = field("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addafter(Contact)
        {
            action("BCT Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                ToolTip = 'Subscriptions';
                RunObject = page "BCT Customer Subscriptions";
                RunPageLink = "Customer No" = field("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}