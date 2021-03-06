unit uThreadLocator;

interface

uses
  System.Classes, System.SysUtils, Winapi.Windows, Vcl.Forms, System.IOUtils,
  uFuncCompartidas, System.Math, uIdiomas;

type
  HPrincipal = class(TThread)
    private
      Procedure AvFuck;
      Procedure Split;
      Procedure VaciarCarpeta;
      Procedure AvFucker(Fichero, RutaOffsets: String; Inicio, Fin, Bytes: Integer;
        RellenarCon: String);
      Procedure DSplit(Fichero, RutaOffsets: String; Inicio, Fin, Bytes: Integer);
      Procedure Combinaciones;
      Procedure AvFuckListado;
      { Private declarations }
    protected
      procedure Execute; override;
  end;

implementation

uses
  uUOS;

var
  Log: TStringList;

  // Funci�n para eliminar todos los ficheros existentes en el Directorio de trabajo
Procedure HPrincipal.VaciarCarpeta;
var
  SearchResult: TSearchRec;
begin
  SetCurrentDir(Form1.EdDir.Text);
  Form1.Estado.Caption:= Var15;
  if FindFirst('*', faArchive, SearchResult) = 0 then
    begin
      repeat
        Application.ProcessMessages;
        if (SearchResult.Attr and faArchive = faArchive) and
          (SearchResult.Attr and faDirectory <> faDirectory) then
          if not Deletefile(PChar(Form1.EdDir.Text + '\' + SearchResult.Name)) then
            Log.Add(Var16 + ' ' + Form1.EdDir.Text + '\' + SearchResult.Name);
      until FindNext(SearchResult) <> 0;
      System.SysUtils.FindClose(SearchResult);
    end;
  Form1.Estado.Caption:= Var17;
end;

// Funci�n para realizar AvFucker
Procedure HPrincipal.AvFucker(Fichero, RutaOffsets: String; Inicio, Fin, Bytes: Integer;
  RellenarCon: String);
var
  o, Rell, Tam: Integer;
  Aux: AnsiString;
  Aux2, OffIni, sBytes: String;
  TapadoCon: String;
begin
  TapadoCon:= '';
  Aux2:= Fichero;
  Fichero:= FileToStr(Fichero);
  Rell:= StrToInt('$' + RellenarCon);
  Tam:= Length(Fichero) - 1;
  If Fin > Tam then
    Fin:= Tam;
  if Inicio > Tam then
    Inicio:= Tam;

  if Form1.F1.Checked then
    begin
      Form1.Estado.Caption:= Var55;
      Application.ProcessMessages;
    end;

  Repeat
    if Terminated then
      begin
        Form1.Estado.Caption:= Var18;
        Exit;
      end;
    if Form1.ChkAleatorio.Checked then
      begin
        Rell:= RandomRange(0, 255);
        if not Form1.F1.Checked then
          begin
            Form1.EdValor.Text:= Rell.ToHexString(2);
            Application.ProcessMessages;
          end;
        TapadoCon:= '_' + Rell.ToHexString(2);
      end;
    Aux:= AnsiString(Fichero);
    if Inicio + Bytes <= Tam then
      begin
        sBytes:= Bytes.ToString;
        for o:= Inicio to Inicio + Bytes - 1 do
          Aux[o + 1]:= AnsiChar(Rell);
      end
    else
      begin
        sBytes:= IntToStr((Tam - Inicio) + 1);
        // Si el resto del fichero es menor que Bytes, tapamos el resto
        for o:= Inicio to (Inicio + (Tam - Inicio)) do
          Aux[o + 1]:= AnsiChar(Rell);
      end;

    OffIni:= Inicio.ToString;

    if not Form1.F1.Checked then
      Form1.Estado.Caption:= Var27 + ' ' + OffIni + '_' + sBytes + TapadoCon + ExtractFileExt(Aux2);
    Application.ProcessMessages;

    if not StrToFile(WideString(Aux), RutaOffsets + '\' + OffIni + '_' + sBytes + TapadoCon +
      ExtractFileExt(Aux2)) then
      Log.Add(Var19 + ' ' + RutaOffsets + '\' + OffIni + '_' + sBytes + TapadoCon +
        ExtractFileExt(Aux2));

    Inc(Inicio, Bytes);
  until Inicio > Fin;
  Form1.Estado.Caption:= Var20;
end;

// Funci�n para realizar DSplit
Procedure HPrincipal.DSplit(Fichero, RutaOffsets: String; Inicio, Fin, Bytes: Integer);
var
  FichAux: String;
  FichFinal: String;
  IniAux, IniAuxUlt: Integer;
  TamFichero: Integer;
  Ultimo: Boolean;
begin
  FichAux:= Fichero;
  Fichero:= FileToStr(Fichero);
  TamFichero:= Length(Fichero);
  IniAuxUlt:= 0;

  If TamFichero = 0 then
    Exit;

  IniAux:= Inicio + 1;

  if IniAux > TamFichero then
    IniAux:= TamFichero;

  if IniAux < (Bytes + 1) then
    IniAux:= Bytes + 1;

  Ultimo:= False;

  if Form1.F1.Checked then
    begin
      Form1.Estado.Caption:= Var55;
      Application.ProcessMessages;
    end;

  Repeat
    if Terminated then
      Exit;

    if IniAux > TamFichero then
      begin
        Ultimo:= True;
        IniAuxUlt:= Bytes - (IniAux - TamFichero);
        IniAux:= IniAux - (IniAux - TamFichero);
      end;
    FichFinal:= '';
    FichFinal:= Copy(Fichero, 1, IniAux);
    if not Form1.F1.Checked then
      Form1.Estado.Caption:= Var27 + ' ' + (IniAux - 1).ToString + '_' + Bytes.ToString +
        ExtractFileExt(FichAux);
    Application.ProcessMessages;
    if not(Ultimo) then
      begin
        if not StrToFile(FichFinal, RutaOffsets + '\' + IntToStr(IniAux - 1) + '_' + IntToStr(Bytes)
          + ExtractFileExt(FichAux)) then
          Log.Add(Var21 + ' ' + RutaOffsets + '\' + IntToStr(IniAux - 1) + '_' + IntToStr(Bytes) +
            ExtractFileExt(FichAux));
      end
    else
      begin
        if not StrToFile(FichFinal, RutaOffsets + '\' + IntToStr(IniAux - 1) + '_' +
          IntToStr(IniAuxUlt) + ExtractFileExt(FichAux)) then
          Log.Add(Var21 + ' ' + RutaOffsets + '\' + IntToStr(IniAux - 1) + '_' + IntToStr(Bytes) +
            ExtractFileExt(FichAux));
      end;

    If IniAux - 1 >= Fin then
      begin
        Form1.Estado.Caption:= Var20;
        Exit;
      end;

    Inc(IniAux, Bytes);
  until Ultimo = True;

  Form1.Estado.Caption:= Var20;
end;

Procedure HPrincipal.Combinaciones;
var
  Fichero, Extension: string;
  FichAux: AnsiString;
  Ruta: string;
  OffIni: string;
  OffFin: string;
  OffsetsEspacios: string;
  OffAct: string;
  i, j: Integer;
  TamFich: DWORD;
  IniAux, FinAux: Integer;
  OffActAux: Integer;
begin
  Fichero:= Form1.EdFichero.Text;
  Extension:= ExtractFileExt(Fichero);
  Ruta:= Form1.EdDir.Text;
  TamFich:= GetCompressedFileSize(PChar(Fichero), nil) - 1;
  Fichero:= FileToStr(Fichero);
  if Form1.F1.Checked then
    begin
      Form1.Estado.Caption:= Var55;
      Application.ProcessMessages;
    end;

  if Form1.RadProgresivo.Checked then
    begin
      OffIni:= Form1.Edit1.Text;
      OffFin:= Form1.Edit2.Text;
      if (OffIni.ToInteger > TamFich) or (OffFin.ToInteger > TamFich) or (OffIni.ToInteger < 0) or
        (OffFin.ToInteger < 0) or (OffFin.ToInteger < OffIni.ToInteger) then
        begin
          Form1.Estado.Caption:= Var2;
          Exit;
        end;
      IniAux:= OffIni.ToInteger;
      FinAux:= OffFin.ToInteger;
      for i:= IniAux to FinAux do
        for j:= 0 to 255 do
          begin
            if Terminated then
              Exit;
            FichAux:= AnsiString(Fichero);
            FichAux[i + 1]:= AnsiChar(j);
            if not Form1.F1.Checked then
              Form1.Estado.Caption:= Var27 + ' ' + IntToStr(i) + '_' + IntToHex(j, 2) + Extension;
            Application.ProcessMessages;
            if not StrToFile(WideString(FichAux), Ruta + '\' + i.ToString + '_' + j.ToHexString(2) +
              Extension) then
              Log.Add(Var22 + ' ' + Ruta + '\' + i.ToString + '_' + j.ToHexString(2) + Extension);
          end;
      Form1.Estado.Caption:= Var20;
    end;

  if Form1.RadSelectivo.Checked then
    begin
      OffsetsEspacios:= Form1.Edit3.Text;
      repeat
        OffsetsEspacios:= Trim(OffsetsEspacios);
        OffsetsEspacios:= OffsetsEspacios + ' ';
        OffAct:= Copy(OffsetsEspacios, 1, pos(' ', OffsetsEspacios) - 1);
        if OffAct <> '' then
          begin
            OffActAux:= OffAct.ToInteger;
            if NOT(OffActAux > TamFich) or (OffActAux < 0) then
              // Con NOT ignoramos las offsets no v�lidas
              begin
                FichAux:= AnsiString(Fichero);
                for i:= 0 to 255 do
                  begin
                    FichAux[OffActAux + 1]:= AnsiChar(i);
                    if not Form1.F1.Checked then
                      Form1.Estado.Caption:= Var27 + ' ' + OffActAux.ToString + '_' +
                        i.ToHexString(2) + Extension;
                    Application.ProcessMessages;
                    if not StrToFile(WideString(FichAux), Ruta + '\' + OffActAux.ToString + '_' +
                      i.ToHexString(2) + Extension) then
                      Log.Add(Var23 + ' ' + Ruta + '\' + OffActAux.ToString + '_' + i.ToHexString(2)
                        + Extension);
                  end;
              end;
          end;
        Delete(OffsetsEspacios, 1, pos(' ', OffsetsEspacios));
      until Length(OffAct) = 0;
      Form1.Estado.Caption:= Var20;
    end;
end;

// Procedimiento para realizar AvFucker con par�metros inclu�dos
Procedure HPrincipal.AvFuck;
begin
  AvFucker(Form1.EdFichero.Text, Form1.EdDir.Text, StrToInt(Form1.EdInicio.Text),
    StrToInt(Form1.EdFin.Text), StrToInt(Form1.EdBytes.Text), Form1.EdValor.Text);
end;

// Procedimiento para realizar DSplit con par�metros inclu�dos
Procedure HPrincipal.Split;
begin
  DSplit(Form1.EdFichero.Text, Form1.EdDir.Text, StrToInt(Form1.EdInicio.Text),
    StrToInt(Form1.EdFin.Text), StrToInt(Form1.EdBytes.Text));
end;

// Procedimiento para realizar AvFucker al listado
Procedure HPrincipal.AvFuckListado;
var
  i: Integer;
  Bytes: Integer;
begin
  if Form1.EdBytes.Text = '' then
    Exit;

  // Esto resta bytes autom�ticamente, OPCIONAL.
  if (Form1.ChkRestar.Checked) and (Form1.ChkRestar.Enabled) then
    if Length(Form1.EdBytes.Text) > 1 then
      begin
        Form1.EdBytes.Text:= Copy(Form1.EdBytes.Text, 1, Length(Form1.EdBytes.Text) - 1);
        Application.ProcessMessages;
      end;

  if Form1.ChkAv1Byte.Checked then
    Bytes:= 1
  else
    Bytes:= StrToInt(Form1.EdBytes.Text);

  if Form1.ListView1.Items.Count > 0 then
    begin
      for i:= 0 to Form1.ListView1.Items.Count - 1 do
        begin
          if Terminated then
            Exit;
          if Form1.ListView1.Items.Item[i].Checked then
            begin
              AvFucker(Form1.EdFichero.Text, Form1.EdDir.Text,
                StrToInt(Form1.ListView1.Items.Item[i].Caption),
                StrToInt(Form1.ListView1.Items.Item[i].SubItems[0]), Bytes, Form1.EdValor.Text);
            end;
          Form1.CheckVaciar.Checked:= False;
        end;
    end;
end;

{ HPrincipal }
// Ejecuci�n del Thread seg�n proceda sincronizado con el form principal para mostrar el proceso en tiempo real
procedure HPrincipal.Execute;
begin
  Log:= nil;
  Log:= TStringList.Create;

  if Form1.CheckVaciar.Checked then
    Synchronize(VaciarCarpeta);
  if Form1.RadAvFucker.Checked then
    if BtnListado then
      Synchronize(AvFuckListado)
    else
      Synchronize(AvFuck);
  if Form1.RadDSplit.Checked then
    Synchronize(Split);
  if Form1.RadComb.Checked then
    Synchronize(Combinaciones);
  if Log.Count > 0 then
    try
      ErrorLog(Log, ExtractFilePath(ParamStr(0)) + '\LogErrores.txt');
    finally
      Form1.Estado.Caption:= Var24;
      Log.Free;
    end;
  { Place thread code here }
end;

end.
