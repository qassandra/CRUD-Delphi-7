unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, unit1, DB, ADODB;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
With Form2.ADOQuery1 do
  begin
    Edit;
    FieldByname('NIM').AsString:=edit1.Text;
    FieldByname('NAMA').AsString:=edit2.Text;
    FieldByname('Jurusan').AsString:=edit3.Text;
    Post;
    Form1.Show;
  end;
end;

end.
