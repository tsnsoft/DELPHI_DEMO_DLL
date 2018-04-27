unit Demo_Loader_DLLpas_lite;

interface

uses
  Windows, Controls, StdCtrls, Classes, forms, dialogs, sysutils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var Form1: TForm1;

procedure set_tk(x: real); stdcall; external 'demo_dll.dll';
function xsin(x: real): real; stdcall; external 'demo_dll.dll';

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
  randomize;
  set_tk(random(10));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(floattostr(xsin(5)));
end;

end.
