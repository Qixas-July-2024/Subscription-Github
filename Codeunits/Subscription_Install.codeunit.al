codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        //Hello Miss World
        PBA_Test_Lab_4();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension
    end;

    local procedure PBA_Test_Lab_4()
    var
        PBATest: Record "BCT PBA Test";
        UpgradeTag: Codeunit "Upgrade Tag";
        PBATestLbl: Label 'PBATestLbl', Locked = true;
    begin
        if not UpgradeTag.HasUpgradeTag(PBATestLbl) then begin
            UpgradeTag.SetUpgradeTag(PBATestLbl);
            PbaTest.Init();
            PbaTest.Code := 'PBA-001';
            PbaTest.Description := 'PBA Test 1';
            PbaTest.Insert();
        end;
    end;
}