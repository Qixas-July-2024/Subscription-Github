codeunit 50100 "BCT Subscription Management"
{
    trigger OnRun();
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterPostSalesDoc', '', false, false)]
    local procedure UpdateSubscriptions(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20])
    var
        CustomerSubscription: Record "BCT Customer Subscription";
        SalesInvLine: Record "Sales Invoice Line";
        Subscription: Record "BCT Subscription";
    begin
        if (SalesInvHdrNo <> '') then begin
            SalesInvLine.SetRange("Document No.", SalesInvHdrNo);
            SalesInvLine.SetRange(Type, SalesInvLine.Type::Item);
            if SalesInvLine.FINDSET() then
                repeat
                    CustomerSubscription.SetRange("Item No", SalesInvLine."No.");
                    CustomerSubscription.SetRange(Active, true);
                    if CustomerSubscription.FindFirst() then begin
                        Subscription.GET(CustomerSubscription."Subscription Code");
                        CustomerSubscription."Last Invoice Date" := SalesHeader."Posting Date";
                        CustomerSubscription."Next Invoicing Date" := CALCDATE(Subscription."Invoicing Frequence", SalesHeader."Posting Date");
                        CustomerSubscription.Modify();
                    end;
                until SalesInvLine.Next() = 0;
        end;
    end;
}