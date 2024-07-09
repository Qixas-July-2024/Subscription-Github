pageextension 50100 "BCT BusinessManager RC Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(Embedding)
        {
            action("BCT Subscriptions")
            {
                Caption = 'Subscriptions';
                ToolTip = 'Subscriptions';
                image = InsuranceRegisters;
                RunObject = page "BCT Subscription List";
                ApplicationArea = All;
            }
            action("BCT Subscription Customer")
            {
                Caption = 'Subscription Customer';
                ToolTip = 'Subscription Customer';
                image = InsuranceRegisters;
                RunObject = page "BCT Subscription List";
                ApplicationArea = All;
            }
        }
        addafter("Create Vendor Payments")
        {
            group("BCT Subscriptions 2")
            {

                Caption = 'Subscriptions';
                action("BCT Create Subscription Invoices")
                {
                    Caption = 'Create Subscription Invoices';
                    ToolTip = 'Create Subscription Invoices';
                    image = CreateJobSalesInvoice;
                    RunObject = report "BCT Create Invoices";
                    ApplicationArea = All;
                }
                action("BCT Subscription Customers")
                {
                    Caption = 'Subscription Customers';
                    ToolTip = 'Subscription Customers';
                    image = Report;
                    RunObject = report "BCT Subscription Customers";
                    ApplicationArea = All;
                }
            }
        }
    }
}
