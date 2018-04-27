program Demo_Loader_DLL;





uses
  Forms,
  windows,
  Demo_Loader_DLLpas in 'Demo_Loader_DLLpas.pas' {Form1};

{$R *.RES}
begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
