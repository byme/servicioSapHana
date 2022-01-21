namespace information;
entity Empleados{
    key EmpleadoId: Integer;
    EmpleadoName  : String;
    EmpleadoPhone : Integer;
    EmpleadoEmail : String; 
    EmpleadoNacimiento: DateTime;
    Area     : Association to Area;
}
entity Area{
    key AreaId: Integer;
    AreaName: String;
    AreaUbication: String;
    AreaBoss: String;
    Empleados  : Association to many Empleados
                           on Empleados.Area = $self;
}
