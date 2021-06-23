tableextension 50111 ZYCustomerExt extends Customer
{
    fields
    {
        field(50100; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = " ","Car","Motorcycle","Bicycle";
            DataClassification = CustomerContent;
        }
        field(50101; "Car Code"; Code[20])
        {
            Caption = 'Car Code';
            DataClassification = CustomerContent;
        }
        field(50102; "Car Name"; Text[50])
        {
            Caption = 'Car Name';
            DataClassification = CustomerContent;
        }
        field(50103; "Motorcycle Code"; Code[20])
        {
            Caption = 'Motorcycle Code';
            DataClassification = CustomerContent;
        }
        field(50104; "Motorcycle Name"; Text[50])
        {
            Caption = 'Motorcycle Name';
            DataClassification = CustomerContent;
        }
        field(50105; "Bicycle Code"; Text[50])
        {
            Caption = 'Bicycle Code';
            DataClassification = CustomerContent;
        }
        field(50106; "Bicycle Name"; Text[50])
        {
            Caption = 'Bicycle Name';
            DataClassification = CustomerContent;
        }
    }
}