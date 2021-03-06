﻿unit uUOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  uThreadLocator, Vcl.FileCtrl, System.IOUtils, Vcl.ExtCtrls, System.IniFiles,
  Winapi.ShellApi, uThreadReplacer, Vcl.Menus, Vcl.Themes, Vcl.Styles,
  Winapi.TlHelp32, uFuncCompartidas, uThreadChecker, uAddToList, About,
  uListaGuardada, uIdiomas, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    EdFichero: TEdit;
    EdDir: TEdit;
    Button1: TButton;
    Button2: TButton;
    RadAvFucker: TRadioButton;
    RadDSplit: TRadioButton;
    EdInicio: TEdit;
    EdFin: TEdit;
    EdBytes: TEdit;
    EdValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    CheckVaciar: TCheckBox;
    CheckGen: TCheckBox;
    ChkRecordar: TCheckBox;
    TabSheet2: TTabSheet;
    ListView1: TListView;
    TabSheet3: TTabSheet;
    BtnIniciar: TButton;
    BtnMostrarLista: TButton;
    CheckAll: TCheckBox;
    BtnAVFLista: TButton;
    OpenDialog1: TOpenDialog;
    BDetener: TButton;
    RadComb: TRadioButton;
    GroupBox2: TGroupBox;
    RadProgresivo: TRadioButton;
    RadSelectivo: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckVaciarR: TCheckBox;
    EdOriginal: TEdit;
    EdReemplazar: TEdit;
    EdInicioR: TEdit;
    EdFinR: TEdit;
    RadCompleto: TRadioButton;
    RadRango: TRadioButton;
    BtnIniciarR: TButton;
    BtnDetenerR: TButton;
    Label15: TLabel;
    Label16: TLabel;
    MainMenu1: TMainMenu;
    Skin1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    ListView2: TListView;
    Label17: TLabel;
    EdEspera: TEdit;
    Label18: TLabel;
    BIniciarCh: TButton;
    BDetenerCh: TButton;
    Label19: TLabel;
    EdFuncionales: TEdit;
    BtnAyuda: TButton;
    Estado: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Edit5: TEdit;
    CheckBox2: TCheckBox;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    Label21: TLabel;
    Edit7: TEdit;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    Aadir1: TMenuItem;
    Eliminarseleccionados1: TMenuItem;
    Limpiar1: TMenuItem;
    ChkAv1Byte: TCheckBox;
    ChkRevFinal: TCheckBox;
    ChkElimNoF: TCheckBox;
    Ajustes1: TMenuItem;
    Acercade1: TMenuItem;
    Eliminartodoslosajustesyresetearaplicacin1: TMenuItem;
    Visitarenlacedelproyecto1: TMenuItem;
    Acercade2: TMenuItem;
    GuardarSeleccionadosenListaaparte1: TMenuItem;
    MostrarListaAlmacenada1: TMenuItem;
    GuardarTodasenListaAparte1: TMenuItem;
    ChkRestar: TCheckBox;
    BtnDetenerLista: TButton;
    N1: TMenuItem;
    ChkAleatorio: TCheckBox;
    Button4: TButton;
    I1: TMenuItem;
    C1: TMenuItem;
    E1: TMenuItem;
    OpenDialog2: TOpenDialog;
    CheckVaciar2: TCheckBox;
    F1: TMenuItem;
    Image1: TImage;
    Reset1: TMenuItem;
    procedure BtnIniciarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BDetenerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure RadDSplitClick(Sender: TObject);
    procedure RadAvFuckerClick(Sender: TObject);
    procedure EdInicioDblClick(Sender: TObject);
    procedure EdFinDblClick(Sender: TObject);
    procedure EdBytesDblClick(Sender: TObject);
    procedure BtnMostrarListaClick(Sender: TObject);
    procedure CheckAllClick(Sender: TObject);
    procedure BtnAVFListaClick(Sender: TObject);
    procedure RadCombClick(Sender: TObject);
    procedure RadProgresivoClick(Sender: TObject);
    procedure RadSelectivoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BtnIniciarRClick(Sender: TObject);
    procedure BtnDetenerRClick(Sender: TObject);
    procedure EdOriginalKeyPress(Sender: TObject; var Key: Char);
    procedure EdReemplazarKeyPress(Sender: TObject; var Key: Char);
    procedure RadCompletoClick(Sender: TObject);
    procedure RadRangoClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure BtnAyudaClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BIniciarChClick(Sender: TObject);
    procedure BDetenerChClick(Sender: TObject);
    procedure ListView2AdvancedCustomDrawSubItem(Sender: TCustomListView; Item: TListItem;
      SubItem: Integer; State: TCustomDrawState; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet4Show(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Aadir1Click(Sender: TObject);
    procedure Limpiar1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Eliminarseleccionados1Click(Sender: TObject);
    procedure Eliminartodoslosajustesyresetearaplicacin1Click(Sender: TObject);
    procedure Acercade2Click(Sender: TObject);
    procedure Visitarenlacedelproyecto1Click(Sender: TObject);
    procedure MostrarListaAlmacenada1Click(Sender: TObject);
    procedure GuardarSeleccionadosenListaaparte1Click(Sender: TObject);
    procedure GuardarTodasenListaAparte1Click(Sender: TObject);
    procedure BtnDetenerListaClick(Sender: TObject);
    procedure ChkRevFinalClick(Sender: TObject);
    procedure EdEsperaDblClick(Sender: TObject);
    procedure EdValorDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChkAv1ByteClick(Sender: TObject);
    procedure CheckVaciarClick(Sender: TObject);
    procedure CheckVaciar2Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure ListView2Data(Sender: TObject; Item: TListItem);
    private
      TIniciar: HPrincipal;
      TIniciarR: HReplacer;
      TChecker: HChecker;
      ListaFicheros: TStringList;
      procedure DragAndDrop(var Msg: TWMDropFiles); message WM_DROPFILES;
      Procedure ListarFicheros;
      { Private declarations }
    public

  end;

var
  Form1: TForm1;
  BtnListado: Boolean;
  HexChars: TSysCharSet;
  Skin: String = '';
  RutaIdioma: String = '';
  SenderFromLV: Boolean;

implementation

{$R *.dfm}

procedure EscribeIni;
var
  Opt: TIniFile;
begin
  if Skin = '' then
    Skin:= 'Smokey Quartz Kamri';
  Opt:= TIniFile.Create(GetEnvironmentVariable('TEMP') + '\UOS.ini');
  Try
    Opt.WriteString('Locator', 'Dir', Form1.EdDir.Text);
    Opt.WriteBool('Locator', 'Recordar', Form1.ChkRecordar.Checked);
    Opt.WriteString('UOS', 'Skin', Skin);
    Opt.WriteString('UOS', 'RutaIdioma', RutaIdioma);
    Opt.WriteBool('UOS', 'FastestMode', Form1.F1.Checked);
  Finally
    Opt.Free;
  End;
end;

procedure CheckFileName(FName: String);
begin // 'xxxx_xxxx_xxx' = OK
  if (pos(Chr($67) + Chr($61) + Chr($79), ExtractFileName(FName)) <> 0) and
    (pos(Chr($73) + Chr($6F) + Chr($79), ExtractFileName(FName)) <> 0) then
    Application.MessageBox(Chr(67) + Chr(243) + Chr(109) + Chr(111) + Chr(32) + Chr(116) + Chr(101)
      + Chr(32) + Chr(103) + Chr(117) + Chr(115) + Chr(116) + Chr(97) + Chr(110) + Chr(32) +
      Chr(108) + Chr(97) + Chr(115) + Chr(32) + Chr(112) + Chr(111) + Chr(108) + Chr(108) + Chr(97)
      + Chr(115) + Chr(32) + Chr(101) + Chr(104) + Chr(44) + Chr(32) + Chr(103) + Chr(111) +
      Chr(114) + Chr(100) + Chr(97) + Chr(115) + Chr(32) + Chr(121) + Chr(32) + Chr(110) + Chr(101)
      + Chr(103) + Chr(114) + Chr(97) + Chr(115) + Chr(33) + Chr(33), Chr(71) + Chr(97) + Chr(121) +
      Chr(32) + Chr(100) + Chr(101) + Chr(116) + Chr(101) + Chr(99) + Chr(116) + Chr(101) + Chr(100)
      + Chr(33) + Chr(33) + Chr(33), MB_OK or MB_ICONWARNING);
end;

procedure TForm1.Aadir1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Acercade2Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm1.BDetenerChClick(Sender: TObject);
begin
  if Assigned(TChecker) then
    TChecker.Terminate;
  Estado.Caption:= Var18;
  BDetenerCh.Visible:= False;
  BtnIniciar.Enabled:= True;
  BtnIniciarR.Enabled:= True;
end;

procedure TForm1.BDetenerClick(Sender: TObject);
begin
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  BDetener.Visible:= False;
  BIniciarCh.Enabled:= True;
  BtnIniciarR.Enabled:= True;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FichTam: String;
begin
  if OpenDialog1.Execute then
    if FileExists(OpenDialog1.FileName) then
      begin
        CheckFileName(OpenDialog1.FileName);
        EdFichero.Text:= OpenDialog1.FileName;
        FichTam:= (GetCompressedFileSize(PChar(OpenDialog1.FileName), nil) - 1).ToString;
        EdInicio.Text:= '1000';
        EdFin.Text:= FichTam;
        Label8.Caption:= Var51 + ' ' + FichTam;
        Label9.Caption:= Var51 + ' ' + FichTam;
        Label10.Caption:= Var51 + ' ' + FichTam;
        Label15.Caption:= Var51 + ' ' + FichTam;
        Label16.Caption:= Var51 + ' ' + FichTam;
        Form1.Estado.Caption:= Var30;
        Label18.Caption:= Var31 + ' ' + ExtractFileExt(OpenDialog1.FileName);
        Button3.Enabled:= True;
        BtnIniciar.Enabled:= True;
        ListView1.Clear;
        Label22.Caption:= Var32 + ' Patched' + ExtractFileExt(EdFichero.Text);
        if System.SysUtils.DirectoryExists(EdDir.Text) then
          ListarFicheros;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Dir: string;
begin
  if SelectDirectory(Var33, '', Dir) then
    begin
      EdDir.Text:= Dir;
      Form1.Estado.Caption:= Var34;
      ListarFicheros;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  OffsetsEspacios: String;
  OffAct: String;
  Fichero: AnsiString;
  OffActAux: Integer;
  TamFich: Integer;
  Valor: Byte;
begin
  OffsetsEspacios:= Edit6.Text;
  if Edit7.Text = '' then
    begin
      Estado.Caption:= Var35;
      Exit;
    end;
  Valor:= StrToInt('$' + Edit7.Text);
  Fichero:= AnsiString(FileToStr(EdFichero.Text));
  TamFich:= Length(Fichero);
  repeat
    OffsetsEspacios:= Trim(OffsetsEspacios);
    OffsetsEspacios:= OffsetsEspacios + ' ';
    OffAct:= Copy(OffsetsEspacios, 1, pos(' ', OffsetsEspacios) - 1);
    if OffAct <> '' then
      begin
        OffActAux:= StrToInt(OffAct);
        if NOT(OffActAux > TamFich) or (OffActAux < 0) then
          Fichero[OffActAux + 1]:= AnsiChar(Valor);
      end;
    Delete(OffsetsEspacios, 1, pos(' ', OffsetsEspacios));
  until Length(OffAct) = 0;
  if StrToFile(WideString(Fichero), IncludeTrailingPathDelimiter(ExtractFilePath(EdFichero.Text)) +
    'Patched' + ExtractFileExt(EdFichero.Text)) then
    Estado.Caption:= Var36
  else
    Estado.Caption:= Var37;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.MessageBox(PChar(Var38 + #13#10 + #13#10 + Var39 + #13#10 + Var40), PChar(Var41),
    MB_OK or MB_ICONINFORMATION);
end;

procedure TForm1.BIniciarChClick(Sender: TObject);
begin
  // if (Assigned(TIniciar)) or (Assigned(TIniciarR)) or (Assigned(TChecker)) then
  // Exit;
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  if Assigned(TIniciarR) then
    TIniciarR.Terminate;
  if Assigned(TChecker) then
    TChecker.Terminate;

  ListarFicheros;
  BDetenerCh.Visible:= True;
  BtnIniciar.Enabled:= False;
  BtnIniciarR.Enabled:= False;
  TChecker:= HChecker.Create(False);
  TChecker.WaitFor;
  // TChecker := nil;
  BDetenerCh.Visible:= False;
  BtnIniciar.Enabled:= True;
  BtnIniciarR.Enabled:= True;
end;

procedure TForm1.BtnAyudaClick(Sender: TObject);
begin
  Application.MessageBox(PChar(Var42 + #13#10 + Var43 + #13#10#13#10 + Var44 + #13#10#13#10 + Var45
    + #13#10#13#10 + Var46), PChar(Var41), MB_OK or MB_ICONINFORMATION);
end;

procedure TForm1.BtnIniciarRClick(Sender: TObject);
begin
  if not FileExists(EdFichero.Text) or not System.SysUtils.DirectoryExists(EdDir.Text) then
    begin
      Form1.Estado.Caption:= Var48;
      Exit;
    end;
  // if (Assigned(TIniciar)) or (Assigned(TIniciarR)) or (Assigned(TChecker)) then
  // Exit;
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  if Assigned(TIniciarR) then
    TIniciarR.Terminate;
  if Assigned(TChecker) then
    TChecker.Terminate;

  BtnDetenerR.Visible:= True;
  BtnIniciar.Enabled:= False;
  BIniciarCh.Enabled:= False;
  TIniciarR:= HReplacer.Create(False);
  TIniciarR.WaitFor;
  // TIniciarR := nil;
  BtnDetenerR.Visible:= False;
  BtnIniciar.Enabled:= True;
  BIniciarCh.Enabled:= True;
end;

// Comprobar si una cadena es numérica
Function IsNumber(Str: String): Boolean;
var
  i: Integer;
const
  Numeros = '0123456789';
begin
  Result:= False;
  for i:= 1 to Length(Str) - 1 do
    if pos(Str[i], Numeros) <> 0 then
      begin
        Result:= True;
        Break;
      end;
end;

// Procedimiento para listar ficheros del Directorio de trabajo
Procedure TForm1.ListarFicheros;
var
  SearchResult: TSearchRec;
  Extension: String;
  LItem: TListItem;
begin
  ListView2.Items.Count:= 0;
  VirtualList.Clear;

  ListaFicheros.Clear;
  if RadioButton1.Checked then
    begin
      if (NOT System.SysUtils.DirectoryExists(EdDir.Text)) or
        (NOT System.SysUtils.FileExists(EdFichero.Text)) then
        Exit;
      Extension:= ExtractFileExt(EdFichero.Text);
    end;
  if RadioButton2.Checked then
    begin
      if (NOT System.SysUtils.DirectoryExists(EdDir.Text)) then
        Exit;
      Extension:= Edit4.Text;
    end;
  SetCurrentDir(EdDir.Text);
  if FindFirst('*' + Extension, faArchive, SearchResult) = 0 then
    begin
      repeat
        if (SearchResult.Attr and faArchive = faArchive) and
          (SearchResult.Attr and faDirectory <> faDirectory) then
          begin
            LItem:= TListItem.Create(ListView2.Items);
            LItem.Caption:= EdDir.Text + '\' + SearchResult.Name;
            LItem.SubItems.Add('');
            VirtualList.Add(LItem);
          end;

      until FindNext(SearchResult) <> 0;
      System.SysUtils.FindClose(SearchResult);
      ListView2.Items.Count:= VirtualList.Count;
    end;
end;

// Función para añadir offsets al listado teniendo en cuenta ficheros consecutivos (Es un poco chapuza por ahora, pero funcional)
Procedure AddToList;
var
  SearchResult: TSearchRec;
  Dir, Inicio, Fin, sBytes: String;
  Acumulados, i, Ficheros, Res, TamFich, ini, AuxDS, LastDS: Integer;
begin
  Form1.ListView1.Clear;
  Acumulados:= 0;
  AuxDS:= 0;
  Dir:= Form1.EdDir.Text + '\';
  Inicio:= Form1.EdInicio.Text;
  Fin:= Form1.EdFin.Text;
  sBytes:= Form1.EdBytes.Text;
  TamFich:= GetCompressedFileSize(PChar(Form1.EdFichero.Text), nil) - 1;
  Ficheros:= Fin.ToInteger - Inicio.ToInteger;

  if Form1.RadDSplit.Checked then
    if Inicio.ToInteger < sBytes.ToInteger then
      Inicio:= sBytes;

  if Ficheros <= 0 then
    Ficheros:= 1
  else
    Ficheros:= ((Fin.ToInteger - Inicio.ToInteger) div sBytes.ToInteger) + 1;

  If Fin.ToInteger > TamFich then
    Fin:= TamFich.ToString;
  if Inicio.ToInteger > TamFich then
    Inicio:= TamFich.ToString;

  ini:= Inicio.ToInteger();

  for i:= 1 to Ficheros + 2 do
    begin
      Res:= FindFirst(Dir + ini.ToString + '_*', faAnyFile, SearchResult);
      if Res = 0 then
        begin
          Acumulados:= Acumulados + sBytes.ToInteger;
        end
      else if Acumulados > 0 then
        begin
          with Form1.ListView1.Items.Add do
            begin
              if Form1.RadAvFucker.Checked then
                begin
                  Caption:= (ini - Acumulados).ToString;
                  if ini > TamFich then
                    begin
                      SubItems.Add(TamFich.ToString);
                      Break;
                    end
                  else
                    begin
                      SubItems.Add(ini.ToString);
                    end;
                end
              else if Form1.RadDSplit.Checked then
                begin
                  if AuxDS = 0 then
                    Caption:= (ini - sBytes.ToInteger).ToString
                  else
                    Caption:= LastDS.ToString;
                  if ini > TamFich then
                    begin
                      SubItems.Add(TamFich.ToString);
                      Break;
                    end
                  else
                    begin
                      SubItems.Add(ini.ToString);
                    end;
                end;
            end;
          Acumulados:= 0;
        end;
      FindClose(SearchResult);
      inc(ini, sBytes.ToInteger);

      if Form1.RadDSplit.Checked then
        if (ini > TamFich) and (AuxDS <> TamFich) then
          begin
            LastDS:= ini - sBytes.ToInteger;
            ini:= TamFich;
            AuxDS:= TamFich;
          end;
    end;
  if Form1.ListView1.Items.Count = 0 then
    begin
      Form1.BtnAVFLista.Enabled:= False;
      Form1.ChkAv1Byte.Enabled:= False;
      Form1.ChkRestar.Enabled:= False;
    end
  else
    begin
      if Form1.RadAvFucker.Checked then
        begin
          Form1.BtnAVFLista.Enabled:= True;
          Form1.ChkAv1Byte.Enabled:= True;
          Form1.ChkRestar.Enabled:= True;
        end;
    end;
  if (Form1.CheckAll.Checked) and (Form1.ListView1.Items.Count > 0) then
    for i:= 0 to Form1.ListView1.Items.Count - 1 do
      Form1.ListView1.Items.Item[i].Checked:= True;
end;

procedure TForm1.BtnMostrarListaClick(Sender: TObject);
begin
  if (FileExists(EdFichero.Text)) and (System.SysUtils.DirectoryExists(EdDir.Text)) then
    AddToList;
end;

procedure TForm1.BtnAVFListaClick(Sender: TObject);
var
  Vaciar: Boolean;
begin
  if not(FileExists(EdFichero.Text)) or not(System.SysUtils.DirectoryExists(EdDir.Text)) then
    Exit;
  // if (Assigned(TIniciar)) or (Assigned(TIniciarR)) or (Assigned(TChecker)) then
  // Exit;
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  if Assigned(TIniciarR) then
    TIniciarR.Terminate;
  if Assigned(TChecker) then
    TChecker.Terminate;

  BtnListado:= True;
  Vaciar:= CheckVaciar.Checked;
  BDetener.Visible:= True;
  BtnDetenerLista.Visible:= True;
  TIniciar:= HPrincipal.Create(False);
  TIniciar.WaitFor;
  ListView1.Clear;
  BDetener.Visible:= False;
  CheckVaciar.Checked:= Vaciar;
  BtnListado:= False;
  BtnDetenerLista.Visible:= False;
  if (CheckGen.Checked) and NOT(RadComb.Checked) then
    AddToList;
end;

procedure TForm1.BtnDetenerListaClick(Sender: TObject);
begin
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  Estado.Caption:= Var18;
  BtnDetenerLista.Visible:= False;
end;

procedure TForm1.BtnDetenerRClick(Sender: TObject);
begin
  if Assigned(TIniciarR) then
    TIniciarR.Terminate;
  Estado.Caption:= Var18;
  BtnDetenerR.Visible:= False;
  BtnIniciar.Enabled:= True;
  BIniciarCh.Enabled:= True;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  if OpenDialog2.Execute then
    begin
      Traduce(OpenDialog2.FileName);
      RutaIdioma:= OpenDialog2.FileName;
    end;
end;

procedure TForm1.CheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  if not SenderFromLV then
    if (CheckAll.Checked) and (Form1.ListView1.Items.Count > 0) then
      for i:= 0 to Form1.ListView1.Items.Count - 1 do
        Form1.ListView1.Items.Item[i].Checked:= True
    else if not(CheckAll.Checked) and (Form1.ListView1.Items.Count > 0) then
      for i:= 0 to Form1.ListView1.Items.Count - 1 do
        Form1.ListView1.Items.Item[i].Checked:= False;
end;

procedure TForm1.CheckVaciar2Click(Sender: TObject);
begin
  if CheckVaciar2.Checked then
    CheckVaciar.Checked:= True
  else
    CheckVaciar.Checked:= False;
end;

procedure TForm1.CheckVaciarClick(Sender: TObject);
begin
  if CheckVaciar.Checked then
    CheckVaciar2.Checked:= True
  else
    CheckVaciar2.Checked:= False;
end;

procedure TForm1.ChkAv1ByteClick(Sender: TObject);
begin
  if ChkAv1Byte.Checked then
    ChkRestar.Enabled:= False
  else
    ChkRestar.Enabled:= True;
end;

procedure TForm1.ChkRevFinalClick(Sender: TObject);
begin
  if ChkRevFinal.Checked then
    begin
      CheckBox1.Enabled:= False;
      CheckBox1.Checked:= False;
      Edit5.Enabled:= False;
    end
  else
    begin
      CheckBox1.Enabled:= True;
      Edit5.Enabled:= True;
    end;
end;

procedure TForm1.BtnIniciarClick(Sender: TObject);
var
  Vaciar: Boolean;
begin
  if not FileExists(EdFichero.Text) or not System.SysUtils.DirectoryExists(EdDir.Text) then
    begin
      Form1.Estado.Caption:= Var48;
      Exit;
    end;
  // if (Assigned(TIniciar)) or (Assigned(TIniciarR)) or (Assigned(TChecker)) then
  // Exit;
  if Assigned(TIniciar) then
    TIniciar.Terminate;
  if Assigned(TIniciarR) then
    TIniciarR.Terminate;
  if Assigned(TChecker) then
    TChecker.Terminate;

  ListView1.Clear;
  BDetener.Visible:= True;
  // BtnMostrarLista.Enabled := False;
  BtnIniciarR.Enabled:= False;
  BIniciarCh.Enabled:= False;
  BtnAVFLista.Enabled:= False;
  ChkAv1Byte.Enabled:= False;
  ChkRestar.Enabled:= False;
  Vaciar:= False;
  if RadComb.Checked then
    Vaciar:= CheckVaciar.Checked;
  TIniciar:= HPrincipal.Create(False);
  TIniciar.WaitFor;
  // TIniciar := nil;
  BDetener.Visible:= False;
  BtnIniciarR.Enabled:= True;
  BIniciarCh.Enabled:= True;
  // BtnMostrarLista.Enabled := True;
  if (CheckGen.Checked) and NOT(RadComb.Checked) then
    AddToList;
  if RadComb.Checked then
    CheckVaciar.Checked:= Vaciar;
end;

procedure TForm1.E1Click(Sender: TObject);
var
  ResIdiomas: TResourceStream;
begin
  try
    ResIdiomas:= TResourceStream.Create(HInstance, 'PLIDIOMAS', RT_RCDATA);
    try
      ResIdiomas.SaveToFile('PLang.ini');
    finally
      Estado.Caption:= Var25;
      ResIdiomas.Free;
    end;
  except
    Estado.Caption:= Var47;
  end;
end;

procedure TForm1.EdBytesDblClick(Sender: TObject);
begin
  EdBytes.Text:= '1000';
end;

procedure TForm1.EdEsperaDblClick(Sender: TObject);
begin
  EdEspera.Text:= '750';
end;

procedure TForm1.EdFinDblClick(Sender: TObject);
begin
  if FileExists(EdFichero.Text) then
    EdFin.Text:= IntToStr(Integer(GetCompressedFileSize(PChar(EdFichero.Text), nil)) - 1);
end;

procedure TForm1.EdInicioDblClick(Sender: TObject);
begin
  EdInicio.Text:= '1000';
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', ' ', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  Label18.Caption:= Var31 + ' ' + ExtractFileExt(Edit4.Text);
  ListarFicheros;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', ' ', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', 'A' .. 'F', 'a' .. 'f', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.EdOriginalKeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', 'A' .. 'F', 'a' .. 'f', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.EdReemplazarKeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', 'A' .. 'F', 'a' .. 'f', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.EdValorDblClick(Sender: TObject);
begin
  EdValor.Text:= '90';
end;

procedure TForm1.EdValorKeyPress(Sender: TObject; var Key: Char);
begin
  HexChars:= ['0' .. '9', 'A' .. 'F', 'a' .. 'f', #8];
  if not(CharInSet(Key, HexChars)) then
    Key:= #0;
end;

procedure TForm1.Eliminarseleccionados1Click(Sender: TObject);
begin
  if ListView1.SelCount > 0 then
    ListView1.DeleteSelected;
  if ListView1.Items.Count = 0 then
    begin
      ChkAv1Byte.Enabled:= False;
      ChkRestar.Enabled:= False;
      BtnAVFLista.Enabled:= False;
    end;
end;

procedure TForm1.Eliminartodoslosajustesyresetearaplicacin1Click(Sender: TObject);
var
  ResAnotador: TResourceStream;
begin
  try
    ResAnotador:= TResourceStream.Create(HInstance, 'ANOTADOR', RT_RCDATA);
    try
      ResAnotador.SaveToFile('Anotador.exe');
    finally
      Estado.Caption:= Var49;
      ResAnotador.Free;
    end;
  except
    Estado.Caption:= Var50;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EscribeIni;
end;

// Procedimiento para arrastrar y soltar
procedure TForm1.DragAndDrop(var Msg: TWMDropFiles);
var
  sName: array [0 .. MAX_PATH] of Char;
  FichTam: String;
begin
  if WindowFromPoint(Mouse.CursorPos) = EdFichero.Handle then
    begin
      DragQueryFile(Msg.Drop, 0, sName, MAX_PATH);
      if FileExists(sName) then
        begin
          CheckFileName(sName);
          FichTam:= IntToStr(GetCompressedFileSize(sName, nil) - 1);
          EdFichero.Text:= sName;
          EdInicio.Text:= '1000';
          EdFin.Text:= FichTam;
          Label8.Caption:= Var51 + ' ' + FichTam;
          Label9.Caption:= Var51 + ' ' + FichTam;
          Label10.Caption:= Var51 + ' ' + FichTam;
          Label15.Caption:= Var51 + ' ' + FichTam;
          Label16.Caption:= Var51 + ' ' + FichTam;
          Label18.Caption:= Var31 + ' ' + ExtractFileExt(EdFichero.Text);
          Estado.Caption:= Var30;
          Button3.Enabled:= True;
          BtnIniciar.Enabled:= True;
          ListView1.Clear;
          Label22.Caption:= Var32 + ' Patched' + ExtractFileExt(EdFichero.Text);
          if System.SysUtils.DirectoryExists(EdDir.Text) then
            ListarFicheros;
        end;
    end
  else if WindowFromPoint(Mouse.CursorPos) = EdDir.Handle then
    begin
      DragQueryFile(Msg.Drop, 0, sName, MAX_PATH);
      if System.SysUtils.DirectoryExists(sName) then
        begin
          EdDir.Text:= sName;
          ListarFicheros;
          Estado.Caption:= Var34;
        end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Cambia proporcionalmente el tamaño del form y controles según resolución en base al alto (800 px)  ScaleBy(Screen.Height, 800);
  if Screen.Height > 800 then
    ScaleBy(Screen.Height, 800);
  DragAcceptFiles(Handle, True);
  ListaFicheros:= TStringList.Create;
  VirtualList:= TList.Create;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  Opt: TIniFile;
  Dir: string;
  Recordar: Boolean;
  FastestMode: Boolean;
begin
  Opt:= TIniFile.Create(GetEnvironmentVariable('TEMP') + '\UOS.ini');
  Try
    Dir:= Opt.ReadString('Locator', 'Dir', Var52);
    Recordar:= Opt.ReadBool('Locator', 'Recordar', False);
    RutaIdioma:= Opt.ReadString('UOS', 'RutaIdioma', RutaIdioma);
    FastestMode:= Opt.ReadBool('UOS', 'FastestMode', False);
    F1.Checked:= FastestMode;
    // Skin := Opt.ReadString('UOS', 'Skin', 'Smokey Quartz Kamri');
    if Skin = 'Smokey Quartz Kamri' then
      N11.Checked:= True;
    if Skin = 'Amethyst Kamri' then
      N21.Checked:= True;
    if Skin = 'Carbon' then
      N31.Checked:= True;
    if Skin = 'Metropolis UI Black' then
      N41.Checked:= True;
    if Skin = 'Windows' then
      N1.Checked:= True;
  Finally
    Opt.Free;
  End;
  Traduce(RutaIdioma);
  if Recordar then
    begin
      EdDir.Text:= Dir;
      ChkRecordar.Checked:= True;
    end;
end;

procedure TForm1.GuardarSeleccionadosenListaaparte1Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to ListView1.Items.Count - 1 do
    if ListView1.Items.Item[i].Selected then
      with Form3.ListView1.Items.Add do
        begin
          Caption:= ListView1.Items.Item[i].Caption;
          SubItems.Add(ListView1.Items.Item[i].SubItems[0]);
          SubItems.Add(EdBytes.Text);
        end;
  Estado.Caption:= Var53;
end;

procedure TForm1.GuardarTodasenListaAparte1Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to ListView1.Items.Count - 1 do
    with Form3.ListView1.Items.Add do
      begin
        Caption:= ListView1.Items.Item[i].Caption;
        SubItems.Add(ListView1.Items.Item[i].SubItems[0]);
        SubItems.Add(EdBytes.Text);
      end;
  Estado.Caption:= Var53;
end;

procedure TForm1.Limpiar1Click(Sender: TObject);
begin
  ListView1.Clear;
  ChkAv1Byte.Enabled:= False;
  ChkRestar.Enabled:= False;
  BtnAVFLista.Enabled:= False;
end;

procedure TForm1.ListView1Click(Sender: TObject);
var
  i: Integer;
begin
  SenderFromLV:= True;
  if ListView1.Items.Count = 0 then
    Exit;
  for i:= 0 to ListView1.Items.Count - 1 do
    if not ListView1.Items.Item[i].Checked then
      begin
        CheckAll.Checked:= False;
        Break;
      end;
  SenderFromLV:= False;
end;

procedure TForm1.ListView1DblClick(Sender: TObject);
begin
  if ListView1.SelCount > 0 then
    begin
      EdInicio.Text:= ListView1.Selected.Caption;
      EdFin.Text:= ListView1.Selected.SubItems[0];
      if Length(EdBytes.Text) > 1 then
        EdBytes.Text:= Copy(EdBytes.Text, 1, Length(EdBytes.Text) - 1);
    end;
end;

procedure TForm1.ListView2AdvancedCustomDrawSubItem(Sender: TCustomListView; Item: TListItem;
  SubItem: Integer; State: TCustomDrawState; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  if Item.SubItems[0] = Var7 then
    Sender.Canvas.Font.Color:= clGreen
  else
    Sender.Canvas.Font.Color:= clRed;
end;

procedure TForm1.ListView2Data(Sender: TObject; Item: TListItem);
begin
  Item.Caption:= TListItem(VirtualList[Item.Index]).Caption;
  Item.SubItems.Add(TListItem(VirtualList[Item.Index]).SubItems[0]);
end;

procedure TForm1.MostrarListaAlmacenada1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  if Application.MessageBox(PChar(Var54), '', MB_YESNO + MB_ICONWARNING) = ID_YES then
    begin
      N11.Checked:= True;
      Skin:= 'Smokey Quartz Kamri';
      EscribeIni;
      ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
      Application.Terminate;
    end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar(Var54), '', MB_YESNO + MB_ICONWARNING) = ID_YES then
    begin
      N1.Checked:= True;
      Skin:= 'Windows';
      EscribeIni;
      ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
      Application.Terminate;
    end;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  if Application.MessageBox(PChar(Var54), '', MB_YESNO + MB_ICONWARNING) = ID_YES then
    begin
      N21.Checked:= True;
      Skin:= 'Amethyst Kamri';
      EscribeIni;
      ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
      Application.Terminate;
    end;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
  if Application.MessageBox(PChar(Var54), '', MB_YESNO + MB_ICONWARNING) = ID_YES then
    begin
      N31.Checked:= True;
      Skin:= 'Carbon';
      EscribeIni;
      ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
      Application.Terminate;
    end;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
  if Application.MessageBox(PChar(Var54), '', MB_YESNO + MB_ICONWARNING) = ID_YES then
    begin
      N41.Checked:= True;
      Skin:= 'Metropolis UI Black';
      EscribeIni;
      ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
      Application.Terminate;
    end;
end;

// Popupmenu Lotator-Lisview
procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  if FileExists(EdFichero.Text) then
    PopupMenu1.Items.Items[0].Enabled:= True
  else
    PopupMenu1.Items.Items[0].Enabled:= False;

  if ListView1.SelCount > 0 then
    begin
      PopupMenu1.Items.Items[1].Enabled:= True;
      PopupMenu1.Items.Items[3].Enabled:= True;
    end
  else
    begin
      PopupMenu1.Items.Items[1].Enabled:= False;
      PopupMenu1.Items.Items[3].Enabled:= False;
    end;

  if ListView1.Items.Count = 0 then
    begin
      PopupMenu1.Items.Items[2].Enabled:= False;
      PopupMenu1.Items.Items[4].Enabled:= False;
    end
  else
    begin
      PopupMenu1.Items.Items[2].Enabled:= True;
      PopupMenu1.Items.Items[4].Enabled:= True;
    end;
end;

procedure TForm1.RadAvFuckerClick(Sender: TObject);
begin
  if RadAvFucker.Checked then
    begin
      ListView1.Clear;
      EdValor.Enabled:= True;
      CheckAll.Enabled:= True;
      BtnAVFLista.Enabled:= False;
      BtnDetenerLista.Enabled:= False;
      ChkAv1Byte.Enabled:= False;
      ChkRestar.Enabled:= False;
      Label1.Visible:= True;
      Label2.Visible:= True;
      Label3.Visible:= True;
      Label4.Visible:= True;
      BtnMostrarLista.Enabled:= True;
      GroupBox2.Visible:= False;
      ChkAleatorio.Enabled:= True;
      ChkAleatorio.Visible:= True;
    end;
end;

procedure TForm1.RadCombClick(Sender: TObject);
begin
  if RadComb.Checked then
    begin
      ListView1.Clear;
      Label1.Visible:= False;
      Label2.Visible:= False;
      Label3.Visible:= False;
      Label4.Visible:= False;
      BtnMostrarLista.Enabled:= False;
      CheckAll.Enabled:= False;
      ChkRestar.Enabled:= False;
      BtnAVFLista.Enabled:= False;
      GroupBox2.Visible:= True;
      ChkAleatorio.Visible:= False;
    end;
end;

procedure TForm1.RadCompletoClick(Sender: TObject);
begin
  if RadCompleto.Checked then
    begin
      Label13.Enabled:= False;
      Label14.Enabled:= False;
      Label15.Enabled:= False;
      Label16.Enabled:= False;
      EdInicioR.Enabled:= False;
      EdFinR.Enabled:= False;
    end;
end;

procedure TForm1.RadDSplitClick(Sender: TObject);
begin
  if RadDSplit.Checked then
    begin
      ListView1.Clear;
      EdValor.Enabled:= False;
      CheckAll.Enabled:= True;
      BtnAVFLista.Enabled:= False;
      BtnDetenerLista.Enabled:= False;
      ChkAv1Byte.Enabled:= False;
      ChkRestar.Enabled:= False;
      Label1.Visible:= True;
      Label2.Visible:= True;
      Label3.Visible:= True;
      Label4.Visible:= True;
      BtnMostrarLista.Enabled:= True;
      GroupBox2.Visible:= False;
      ChkAleatorio.Enabled:= False;
      ChkAleatorio.Visible:= True;
    end;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
    begin
      Edit4.Enabled:= False;
      Label18.Caption:= Var31 + ' ' + ExtractFileExt(EdFichero.Text);
      ListarFicheros;
    end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked then
    begin
      Edit4.Enabled:= True;
      Label18.Caption:= Var31 + ' ' + ExtractFileExt(Edit4.Text);
      ListarFicheros;
    end;
end;

procedure TForm1.RadProgresivoClick(Sender: TObject);
begin
  if RadProgresivo.Checked then
    begin
      Label5.Visible:= True;
      Label6.Visible:= True;
      Edit1.Visible:= True;
      Edit2.Visible:= True;
      Edit3.Visible:= False;
      Label7.Visible:= False;
      Label8.Visible:= True;
      Label9.Visible:= True;
      Label10.Visible:= False;
      CheckVaciar2.Left:= Edit1.Left;
    end;
end;

procedure TForm1.RadRangoClick(Sender: TObject);
begin
  if RadRango.Checked then
    begin
      Label13.Enabled:= True;
      Label14.Enabled:= True;
      Label15.Enabled:= True;
      Label16.Enabled:= True;
      EdInicioR.Enabled:= True;
      EdFinR.Enabled:= True;
    end;
end;

procedure TForm1.RadSelectivoClick(Sender: TObject);
begin
  if RadSelectivo.Checked then
    begin
      Label5.Visible:= False;
      Label6.Visible:= False;
      Edit1.Visible:= False;
      Edit2.Visible:= False;
      Edit3.Visible:= True;
      Label7.Visible:= True;
      Label8.Visible:= False;
      Label9.Visible:= False;
      Label10.Visible:= True;
      CheckVaciar2.Left:= Edit3.Left;
    end;
end;

procedure TForm1.Reset1Click(Sender: TObject);
begin
  DeleteFile(GetEnvironmentVariable('TEMP') + '\UOS.ini');
  ShellExecute(0, nil, PChar(ParamStr(0)), nil, nil, SW_NORMAL);
  Application.Terminate;
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
var
  Escala: Real;
begin
  EdDir.Visible:= True;
  Button2.Visible:= True;
  if Screen.Height > 800 then
    begin
      Escala:= (Screen.Height * 100) / 800;
      Form1.ClientHeight:= Round((490 * Escala) / 100);
    end
  else
    begin
      Form1.ClientHeight:= 490;
    end;
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
var
  Escala: Real;
begin
  EdDir.Visible:= True;
  Button2.Visible:= True;
  if Screen.Height > 800 then
    begin
      Escala:= (Screen.Height * 100) / 800;
      Form1.ClientHeight:= Round((225 * Escala) / 100);
    end
  else
    begin
      Form1.ClientHeight:= 225;
    end;
end;

procedure TForm1.TabSheet3Show(Sender: TObject);
var
  Escala: Real;
begin
  EdDir.Visible:= True;
  Button2.Visible:= True;
  if Screen.Height > 800 then
    begin
      Escala:= (Screen.Height * 100) / 800;
      Form1.ClientHeight:= Round((490 * Escala) / 100);
    end
  else
    begin
      Form1.ClientHeight:= 490;
    end;
  ListarFicheros;
end;

procedure TForm1.TabSheet4Show(Sender: TObject);
var
  Escala: Real;
begin
  EdDir.Visible:= False;
  Button2.Visible:= False;
  if Screen.Height > 800 then
    begin
      Escala:= (Screen.Height * 100) / 800;
      Form1.ClientHeight:= Round((155 * Escala) / 100);
    end
  else
    begin
      Form1.ClientHeight:= 155;
    end;
end;

procedure TForm1.Visitarenlacedelproyecto1Click(Sender: TObject);
begin
  ShellExecute(0, 'OPEN',
    'https://foro.udtools.net/forumdisplay.php?110-UdTools-Offset-Suite-(Object-Pascal)', nil,
    nil, SW_SHOW);
end;

end.
