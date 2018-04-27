library demo_dll;

{ Переменная библиотеки DLL }
var tk: real=0;

procedure set_tk(x: real) export; stdcall;
{ Процедура установки переменной "TK" }
begin
  tk:=x;
end;

function xsin(x: real): real export; stdcall;
{ Функция расчета }
begin
  xsin:=sin(x)+tk;
end;

{ Экспорт процедур и функций }
exports set_tk, xsin ;

{ Секция инициализации библиотеки DLL }
begin
  tk:=0;
end.
