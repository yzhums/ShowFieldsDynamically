pageextension 50111 ZYCustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(Type; Rec.Type)
            {
                ApplicationArea = All;

                trigger OnValidate()
                begin
                    InitializeVariables();
                end;
            }
            group(CarGourp)
            {
                Visible = CarVisible;
                ShowCaption = false;

                field("Car Code"; Rec."Car Code")
                {
                    ApplicationArea = All;
                }
                field("Car Name"; Rec."Car Name")
                {
                    ApplicationArea = All;
                }
            }
            group(MotorcycleGroup)
            {
                Visible = MotorcycleVisible;
                ShowCaption = false;

                field("Motorcycle Code"; Rec."Motorcycle Code")
                {
                    ApplicationArea = All;
                }
                field("Motorcycle Name"; Rec."Motorcycle Name")
                {
                    ApplicationArea = All;
                }
            }
            group(BicycleGroup)
            {
                Visible = BicycleVisible;
                ShowCaption = false;

                field("Bicycle Code"; Rec."Bicycle Code")
                {
                    ApplicationArea = All;
                }
                field("Bicycle Name"; Rec."Bicycle Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        InitializeVariables();
    end;

    var
        [InDataSet]
        CarVisible, MotorcycleVisible, BicycleVisible : Boolean;

    local procedure InitializeVariables()
    begin
        case Rec.Type of
            Rec.Type::" ":
                SetFieldsVisible(false, false, false);
            Rec.Type::Car:
                SetFieldsVisible(true, false, false);
            Rec.Type::Motorcycle:
                SetFieldsVisible(false, true, false);
            Rec.Type::Bicycle:
                SetFieldsVisible(false, false, true);
        end;
    end;


    local procedure SetFieldsVisible(NewCarVisible: Boolean; NewMotorcycleVisible: Boolean; NewBicycleVisible: Boolean)
    begin
        CarVisible := NewCarVisible;
        MotorcycleVisible := NewMotorcycleVisible;
        BicycleVisible := NewBicycleVisible;
    end;
}
