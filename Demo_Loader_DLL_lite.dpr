program Demo_Loader_DLL_lite;





uses
  Forms,
  windows,
  Demo_Loader_DLLpas_lite in 'Demo_Loader_DLLpas_lite.pas' {Form1};

{$R *.RES}
begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
