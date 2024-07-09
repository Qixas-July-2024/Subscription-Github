codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        //Hello Miss World
        VNI_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure VNI_Test()
    var
        VNI_Test: Record VNI_Test;
    begin
        VNI_Test.Init();
        VNI_Test.Code := 'VNI';
        VNI_Test.Description := 'Vitalijus Hardcoded';
        VNI_Test.Insert();
    end;
}