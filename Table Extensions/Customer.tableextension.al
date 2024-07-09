tableextension 50100 "BCT Customer Ext" extends Customer
// Original Object
{
    fields
    {
        field(50100; "BCT Subscription Customer"; Boolean)
        {
            Caption = 'Subscription Customer';
            FieldClass = FlowField;
            CalcFormula = exist("BCT Customer Subscription" where("Customer No" = field("No."), Active = const(true)));
            Editable = false;
        }
        field(50200; "PBA Test"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50203; GS_Test; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'GS Test';
        }
    }
}