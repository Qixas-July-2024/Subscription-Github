table 50220 "BCT PBA Test"
{
    DataClassification = AccountData;
    
    fields
    {
        field(1;Code; Code[20])
        {
            Caption='Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Description"; Text[100])
        {
            Caption='Description';
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
}