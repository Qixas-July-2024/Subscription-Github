codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        //Hello Miss World
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension
        LVV_Test();
    end;

    local procedure LVV_Test()
    var
        MyRec: Record Customer_Subscription;
    begin
        MyRec.Init();
        MyRec.Code := 'LVV';
        MyRec.Description := 'Lidia';
        MyRec.Insert();
    end;
}