codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        UpgTag: Codeunit "Upgrade Tag";
    begin
        // Instantiate variables needed for the extension
        //Hello Miss World
        PBA_Test_Lab_4();
        // Create the table
        if not UpgTag.HasUpgradeTag(GSTAG) then begin
            UpgTag.SetUpgradeTag(GSTAG);
            CreateGSTag();
        end;
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

    local procedure CreateGSTag()
    var
        GSTest: Record "GS Test";
    begin
        GSTest.Init();
        GSTest.Code := 'GS';
        GSTest.Description := 'Godwin';
    end;

    var
        GSTAG: Label 'GSTest', Locked = true;
}