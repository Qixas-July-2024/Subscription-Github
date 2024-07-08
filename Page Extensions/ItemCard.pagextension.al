pageextension 50103 "BCT Item Card Ext" extends "Item Card"
{
    layout
    {
        Modify("Standard Cost")
        {
            Enabled = false;
            Visible = false;
        }
        Modify("Unit Cost")
        {
            Enabled = false;
            Visible = false;
        }

        addlast(Item)
        {
            field("BCT Subscription Item"; Rec."BCT Subscription Item")
            {
                ApplicationArea = All;
                ToolTip = 'Subscription Item';

            }
        }
        addlast("Costs & Posting")
        {
            field("BCT Inventory Value Zero"; Rec."Inventory Value Zero")
            {
                ApplicationArea = All;
                ToolTip = 'Inventory Value Zero';
            }
        }
        addfirst(FactBoxes)
        {
            part("BCT Subscription Factbox"; "BCT Subscription Factbox")
            {
                SubPageLink = "Item No" = field("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("BCT Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                ToolTip = 'Subscriptions';
                RunObject = page "BCT Customer Subscriptions";
                RunPageLink = "Item No" = field("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}