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
        MyRec: Record Customer;
    begin
        MyRec.Init();
        MyRec."No." := 'LVV';
        MyRec.Name := 'Lidia';
        MyRec.Insert();
    end;
}