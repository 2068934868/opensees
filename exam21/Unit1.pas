unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, shellapi, MATH;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Edit3: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  KV:INTEGER;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
VAR J:INTEGER;
 pNAME:pansiCHAR;
 DATA:TSTRINGLIST;
 mass:REAL;
 TT:REAL;
begin
KV:=  StrToInt(FloatToStr( StrToFloat(edit2.Text) /StrToFloat(edit3.Text)));
DATA:=TSTRINGLIST.Create;
///////////////////////
//                   //
//   opensees code   //
//                   //
///////////////////////
FOR J:=1 TO KV DO
BEGIN
TT:= strtofloat(edit3.Text)*J;
MASS:=SQR(TT/0.00811557);
data.Clear;
///////////////////////////////
DATA.Add('wipe');
DATA.Add('model basic -ndm 3 -ndf 6 ');
DATA.Add('node 1 0.000E+000 0.000E+000 0.000E+000');
DATA.Add('node 2 0.000E+000 0.000E+000 1000');
DATA.Add(FORMAT('mass 2 %0.5E %0.5E 0.000E+000 0.000E+000 0.000E+000 0.000E+000',[MASS,MASS]));
DATA.Add('fix 1 1 1 1 1 1 1;');
DATA.Add('geomTransf Linear 1 1.000 0.000 0.000');
DATA.Add('element elasticBeamColumn 1 1 2 1.600E+005 2.000E+005 7.923E+004 3.605E+009 1.000E+009 1.000E+009 1');
DATA.Add(FORMAT('recorder EnvelopeNode -file Vbo_%D.out -node 1 -dof 1 reaction',[J]));
DATA.Add('set xDamp '+ edit1.Text +';'  );
DATA.Add('set nEigenI 1; ');
DATA.Add('set nEigenJ 1; ');
DATA.Add('set lambdaN [eigen [expr $nEigenJ]];');
DATA.Add('set lambdaI [lindex $lambdaN [expr $nEigenI-1]]; ');
DATA.Add('set lambdaJ [lindex $lambdaN [expr $nEigenJ-1]]; ');
DATA.Add('set omegaI [expr pow($lambdaI,0.5)];');
DATA.Add('set omegaJ [expr 0.0]');
DATA.Add('set alphaM [expr $xDamp*(2*$omegaI*$omegaJ)/($omegaI+$omegaJ)];');
DATA.Add('set betaKcurr [expr 2.*$xDamp/($omegaI+$omegaJ)];');
DATA.Add('rayleigh $alphaM $betaKcurr 0 0');
DATA.Add('set IDloadTag 1001; ');
DATA.Add('set iGMfile "GM1X.txt";');
DATA.Add('set iGMdirection "1"; ');
DATA.Add('set iGMfact "1";');
DATA.Add('set dt 0.02; ');
DATA.Add('foreach GMdirection $iGMdirection GMfile $iGMfile GMfact $iGMfact {');
DATA.Add('incr IDloadTag;');
DATA.Add('set GMfatt [expr 1*$GMfact]; ');
DATA.Add('set AccelSeries "Series -dt $dt -filePath $iGMfile -factor  $GMfatt"; ');
DATA.Add('pattern UniformExcitation  $IDloadTag  $GMdirection -accel  $AccelSeries; ');
DATA.Add('} ');
DATA.Add('constraints Transformation;');
DATA.Add('numberer Plain; ');
DATA.Add('system UmfPack;');
DATA.Add('test EnergyIncr 1.0e-6 200; ');
DATA.Add('algorithm Newton  ');
DATA.Add('integrator Newmark 0.5 0.25  ');
DATA.Add('analysis Transient');
DATA.Add('analyze 1000 0.02 ');
//data.Add('close');
DATA.SaveToFile(FORMAT('T%D.tcl',[J]));
//pname:=pCHAR(FORMAT('opensees.exe T%D.tcl',[J]));          //Delphi 7
pname:=PAnsiCHAR(AnsiString(FORMAT('opensees.exe T%D.tcl',[J])));       //Delphi 2010
winexec(pname,SW_SHOW);
END;
data.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
VAR J:INTEGER;
    //I:INTEGER;
begin
KV:=StrToInt(FloatToStr( StrToFloat(edit2.Text) /StrToFloat(edit3.Text)));
FOR J:=1 TO KV DO
BEGIN
deletefile(FORMAT('T%D.tcl',[J]));
deletefile(FORMAT('Vbo_%D.out',[J]));
END;
end;

procedure TForm1.Button3Click(Sender: TObject);
VAR  J:INTEGER;
    DATA:TSTRINGLIST;
    VW:REAL;
    g :REAL;
begin
 DATA:=TSTRINGLIST.Create;
 if combobox1.ItemIndex =0 then g:=9.8;
 if combobox1.ItemIndex =1 then g:=980;
 if combobox1.ItemIndex =2 then g:=9800;
 //////////////////////////////////
 MEMO1.Clear;
 FOR J:=1 TO KV DO
 BEGIN
  DATA.LoadFromFile(FORMAT('Vbo_%D.out',[J]));
  ///////////////
  VW:=STRTOFLOAT(DATA.Strings[2]);


  VW:=VW/SQR(strtofloat(edit3.Text)*J/0.00811557)/g;
  MEMO1.Lines.Add(FORMAT('%0.4F,%0.4F',[strtofloat(edit3.Text)*J,VW]));
 END;
 DATA.Free;
end;

end.
