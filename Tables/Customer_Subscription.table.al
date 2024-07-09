table 50101 "BCT Customer Subscription"
{
    Caption = 'Customer Subscription';

    fields
    {
        field(1; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer;
        }
        field(2; "Subscription Code"; Code[10])
        {
            Caption = 'Subscription Code';
            TableRelation = "BCT Subscription";

            trigger OnValidate();
            var
                Subscription: Record "BCT Subscription";
                Item: Record Item;
            begin
                if "Subscription Code" <> xRec."Subscription Code" then
                    xRec.TESTFIELD("Last Invoice Date", 0D);
                Subscription.GET("Subscription Code");
                Subscription.TESTFIELD("Invoicing Frequence");
                Subscription.TESTFIELD("Item No");
                "Item No" := Subscription."Item No";
                Item.GET("Item No");
                Subscription."Deferral Code" := Item."Default Deferral Template Code";
                if Subscription."Invoicing Price" <> 0 then
                    "Invoicing Price" := Subscription."Invoicing Price";
                if "Invoicing Price" = 0 then
                    "Invoicing Price" := Item."Unit Price";
                case Subscription."Invoicing Schedule" of
                    Subscription."Invoicing Schedule"::"Beginning of Next Period":
                        "Start Date" := CALCDATE('<CM+1D>', WORKDATE());

                    Subscription."Invoicing Schedule"::"Beginning of Period":
                        "Start Date" := CALCDATE('<-CM>', WORKDATE());

                    Subscription."Invoicing Schedule"::"End of Period":
                        "Start Date" := CALCDATE('<CM>', WORKDATE());

                    Subscription."Invoicing Schedule"::"Posting Date":
                        "Start Date" := WORKDATE();
                end;
                "Next Invoicing Date" := "Start Date";
                Active := true;
            end;
        }
        field(3; "Item No"; code[20])
        {
            Caption = 'Item No';
            TableRelation = Item;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(5; "Last Invoice Date"; Date)
        {
            Caption = 'Last Invoice Date';
            Editable = false;
        }
        field(6; "Next Invoicing Date"; Date)
        {
            Caption = 'Next Invoicing Date';
        }
        field(7; "Cancelled Date"; date)
        {
            Caption = 'Cancelled Date';
        }
        field(8; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(9; "Invoicing Price"; Decimal)
        {
            Caption = 'Invoicing Price';
        }
        field(10; "Allow Line Discount"; Boolean)
        {
            Caption = 'Allow Line Discount';
        }
        field(50200; LVV_Test; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Customer No", "Subscription Code")
        {
            Clustered = true;
        }
    }
}