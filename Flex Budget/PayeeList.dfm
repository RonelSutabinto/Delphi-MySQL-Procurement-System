object PayeeListForm: TPayeeListForm
  Left = 304
  Top = 155
  BorderIcons = [biSystemMenu]
  Caption = 'Payee List'
  ClientHeight = 315
  ClientWidth = 531
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NxButton1: TNxButton
    Left = 106
    Top = 274
    Width = 75
    Caption = 'Select'
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 194
    Top = 274
    Width = 75
    Caption = 'Add'
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 282
    Top = 274
    Width = 75
    Caption = 'Close'
    TabOrder = 3
    OnClick = NxButton3Click
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 79
    Top = 71
    Width = 385
    Height = 153
    Caption = 'Add Payee'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 4
    Visible = False
    FullWidth = 385
    object Label1: TLabel
      Left = 26
      Top = 50
      Width = 76
      Height = 16
      Caption = 'Payee Code'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 65
      Top = 77
      Width = 37
      Height = 16
      Caption = 'Name'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 106
      Top = 46
      Width = 250
      Height = 24
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'PCode'
      DataSource = AcctData.dsPayee
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 73
      Width = 250
      Height = 24
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'Name'
      DataSource = AcctData.dsPayee
      TabOrder = 1
    end
    object NxButton4: TNxButton
      Left = 110
      Top = 112
      Width = 75
      Caption = 'Save'
      TabOrder = 2
      OnClick = NxButton4Click
    end
    object NxButton5: TNxButton
      Left = 198
      Top = 112
      Width = 75
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = NxButton5Click
    end
  end
  object DBGrid1: TDBGrid1
    Left = 27
    Top = 24
    Width = 478
    Height = 233
    Ctl3D = False
    DataSource = AcctData.dsPayee
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PCode'
        Title.Alignment = taCenter
        Title.Caption = 'Payee Code'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 357
        Visible = True
      end>
  end
  object MyQuery1: TMyQuery
    Connection = AcctData.MyConnection1
    SQL.Strings = (
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR23-CARAGA'#39','#39'CARAGA FILCHIN CORP.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR23-CONSTATINO'#39','#39'EMMANUEL CONSTANTINO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR23-QCB & CO'#39','#39'QCB & CO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ABAD M'#39','#39'MANUEL ABAD'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ABEJERO'#39','#39'RIEL ABEJERO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ACAYLAR R'#39','#39'RAUL ACAYLAR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ACEVEDO TRUCK'#39','#39'ACEVEDO TRUCKING SERVICES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ADMIRAL'#39','#39'ADMIRAL TRADING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-AGNIS JR'#39','#39'JESUS RAMO AGNIS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-AGUSTIN S'#39','#39'STEPHEN AGUSTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ALBERASTINI B'#39','#39'BENJIE M. ALBERASTINI'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ALETA'#39','#39'ALLAN B. ALETA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ALPUERTO E'#39','#39'ALPUERTO EMMANUEL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ALPUERTO M'#39','#39'MILDRED T. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ALVISO'#39','#39'FERNAN ALVISO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ANDAO J'#39','#39'JOSE ANDAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ANG'#39','#39'LULU ANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ANTABO R'#39','#39'RICKY ANTABO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ANTIQUINA E'#39','#39'EVENCIO G. ANTIQUINA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ASUNCION'#39','#39'ROGELIO H. ASUNSION'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BAGUIO L'#39','#39'LILIA E. BAGUIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BANGCAT G'#39','#39'GODOFREDA BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BANGCAT N'#39','#39'NARCISO BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BAUGBOG C'#39','#39'CARMELITA BAUGBOG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BELHIDA L'#39','#39'LEONCIA BELHIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BELHIDA R'#39','#39'RICHARD BELHIDAR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BELOTENDOS V'#39','#39'VIOLITA BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BERTZBAY'#39','#39'BERTZBAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BULADO C'#39','#39'CYNTHIA BULADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BULAWIN R'#39','#39'REX BULAWIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-BU'#209'AO Ef'#39','#39'EFREN BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CABILIN S'#39','#39'SAMUEL CABILIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CAERMARE'#39','#39'ELPEDIO A. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CAERMARE Z'#39','#39'ZANDRO CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CANOY E'#39','#39'ELPEDIO CANOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CARAGA'#39','#39'CARAGA FILCHIN CORP.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CARDENAS V'#39','#39'VIRGINIO F. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CARLON V'#39','#39'VENANCIO CARLON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CARLOTO A'#39','#39'ANGEL CARLOTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CATAHAY R'#39','#39'RICHIE CATAHAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CATANE  J'#39','#39'JOHN GARVEY CATANE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CERNA DELA A'#39','#39'ALEJANDRO DELA CERNA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CHUA'#39','#39'NELSON V. CHUA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CONTRIVIDA H'#39','#39'HERNANI CONTRIVIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CORIMO'#39','#39'JERRY C. CORIMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CRUZ DE LA'#39','#39'ALEJANDRO  DE LA CRUZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CRUZTELCO'#39','#39'CRUZTELCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CUARESMA'#39','#39'GILBERT T. CUARESMA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CUIZON P'#39','#39'PETER T. CUIZON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CULANCULAN E'#39','#39'EDMUNDO CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-CULANCULAN R'#39','#39'ROMEO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DAAROL T'#39','#39'TRANSFIGURACION DAAROL, SR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DAMPAYLA M'#39','#39'MARIEVIC DAMPAYLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DASING'#39','#39'CARMELITO DASING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DCART/T.'#39','#39'DCART/T. REYES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DIGAL'#39','#39'MARCELO DIGAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DIPOLOG MULTI'#39','#39'DIPOLOG MULTI-SALES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DIPOLOG OLD'#39','#39'DIPOLOG OLD MARKET'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DORIMON F'#39','#39'FERNANDO E. DORIMON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DOROJA'#39','#39'JOSEPH C. DOROJA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-DST'#39','#39'DST MOVERS CORP./G. JAPUS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ECHEVARRIA H.'#39','#39'HERCULANO G. ECHEVARRIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-EGUIA'#39','#39'RENATO E'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ELUMBA R'#39','#39'ROLANDO Z. ELUMBA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ELUMBARING'#39','#39'FRANCIS JNTN ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ELUMBARING  R'#39','#39'ELUMBARING RICARDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-EMPESTAN'#39','#39'ABITO EMPESTAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ESCABARTE R'#39','#39'ROSINNI ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-EVERGOOD'#39','#39'EVERGOOD MED. AND INDUSTRIAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-FERNANDEZ A'#39','#39'AURIO FERNANDEZ JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-FERNANDEZ D'#39','#39'DESERIO FERNANDEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-FERRER J'#39','#39'JUN S. FERRER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-FLORIDA F'#39','#39'FLORDELIS FLORIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-GALANIDO'#39','#39'ORLANDO GALANIDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-GALON'#39','#39'FEDERICO GALON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-GAMIL E'#39','#39'EDWARD GAMIL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-GOMITON A'#39','#39'ANALYN GOMITON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-GUITARTE'#39','#39'CLEOPATRA I. GUITARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-HAMAK'#39','#39'HERMILO HAMAK'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-HAMOY'#39','#39'GENESIS DAVE C.HAMOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-HAMOY D'#39','#39'GENESIS DAVE C. HAMOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ICAO ED'#39','#39'EDGARDO A. ICAOJR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ICAO ER'#39','#39'ERIC  M. ICAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-JAMAROLIN A'#39','#39'ALLAN JAMES JAMAROLIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-JANOLINO L'#39','#39'LEONARDO JANOLINO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-JUNVIC'#39','#39'JUNVIC TIRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-JURELLA V'#39','#39'VERGIL WATE JURELLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LAGUTN La'#39','#39'LAURENCE LAGUTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LAO'#39','#39'LAO KADIWA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LAPUT A'#39','#39'ADELMO P. LAPUT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LEE'#39','#39'RONILLO LEE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LIBRADILLA N'#39','#39'NERI LIBRADILLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LILIAN'#39','#39'LILIAN EXPRESS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LIM'#39','#39'MARY ANN LIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-LIM M'#39','#39'MARITH N. LIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MACASARTE A'#39','#39'Archie  Macasarte'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MACASARTE R.'#39','#39'ROGER  O. MACASARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MACO R'#39','#39'ROMEO MACO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MAGALLANES'#39','#39'LUCENIANO MAGALLANES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MANLUPIG F'#39','#39'FRANCISCO MANLUPIG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MERECIDO C'#39','#39'CHRISTINE S. MERECIDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MOCOY'#39','#39'REYNOLD MOCOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MONDRES'#39','#39'ERMIE L. MONDRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MPWH'#39','#39'MPWH'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MURRO J'#39','#39'JERRY MURRO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-MUTIA C'#39','#39'CARMEN I. MUTIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-NATAA'#39','#39'CITA NATAA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-NODALO D'#39','#39'DANILO S. NODALO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-OLMOGUEZ'#39','#39'EXPEDITO OLMOGUEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-OLVIS'#39','#39'ANACLETO OLVIS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ORO C'#39','#39'CRISTINA B. ORO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-OTTO L'#39','#39'LEONILO OTTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-pacres c'#39','#39'CARMELIE PACRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PADRO A.'#39','#39'ALBIN S. PADRO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PAGENTE I'#39','#39'ISIDRA E. PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PALUCA CR'#39','#39'CELL RYAN PALUCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PANOY'#39','#39'HIPOLITO A. PANOY JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PARADIANG'#39','#39'JOSELITO C. PARADIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PASOK'#39','#39'AMELIA PASOK'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PDIC RB PI'#209'AN'#39','#39'PDIC RB OF PI'#209'AN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PETER ENT.'#39','#39'PETER ENTERPRISES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PHIL. BRITISH'#39','#39'PHIL. BRITISH ASSURANCE INC.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PHILAM'#39','#39'PHILAM LIFE/EUTEQUIO ADRIAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PHILRECA'#39','#39'PHILRECA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PIANG A'#39','#39'ARSENIO S. PIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PONCE F'#39','#39'FLORDEMAE PONCE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PUGOY'#39','#39'DARIO PUGOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-PURDALIZA'#39','#39'LEMUEL PURDALIZA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-QUI'#209'ANOLA R'#39','#39'RADON  QUI'#209'ANOLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RAMO A'#39','#39'AGNIS RAMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RAMOGA R'#39','#39'ROLANDO RAMOGA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-REGA'#209'ON M'#39','#39'MAUREEN REGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-REGENCIA J'#39','#39'JOLSON REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-REGENCIA Ma.'#39','#39'MA. ROJEAN REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-REGENCIA N'#39','#39'NOEL REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RENECA'#39','#39'RENECA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-REYES'#39','#39'A. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RUBEN C'#39','#39'RUBEN CHARLITO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RUBIN C'#39','#39'CHARLITO RUBIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-RUIZ C'#39','#39'CLIFFORD RUIZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SABANAL'#39','#39'RENE SABANAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SACAL G'#39','#39'GIL SACAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SAGUIN N'#39','#39'N JESSE FRANCIS B. SAGUIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SALATANDRE F'#39','#39'FLORENDA SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SALAVERIA R'#39','#39'MA. ROJEAN R.  SALAVERIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SAO'#39','#39'SAO KADIWA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SAPPAL A'#39','#39'ADA  S. SAPPAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SEVILLENO'#39','#39'BERNADETTE SEVILLENO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SIG'#39','#39'SIG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SIMYUNN'#39','#39'JASMIN SIMYUNN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SINDANGAN'#39','#39'SA0 POWER BILL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-SUMALPONG'#39','#39'LOUMAR G. SUMALPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TABARANZA'#39','#39'LLOYD TABARANZA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TACUJAN'#39','#39'RENEWIL C. TACUJAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TAN C'#39','#39'CHARITO TAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TAN L'#39','#39'TAN LEONARDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TANJAY J'#39','#39'JAIME TANJAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TEMPLADO'#39','#39'JAFFY LLOYD TEMPLADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TIMTIM L'#39','#39'LEONORA I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-TUANDA J'#39','#39'JOEL TUANDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-VALLECER J'#39','#39'JOSE BENJY VALLECER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-VELASCO'#39','#39'JOCELYN  VELASCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-VELOSO'#39','#39'REYNALDO VELOSO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-VENANCIO  C'#39','#39'CARLON VENANCIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-VILLARINO'#39','#39'LEPHYN G. VILLARINO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-YBA'#209'EZ T'#39','#39'TEOFILA YBA'#209'EZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-YUSON'#39','#39'EDWARD P. YUSON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ZN COMM'#39','#39'ZN COMMUNITY DEFENSE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR30-ZOZOBRADO M'#39','#39'MARITESS B. ZOZOBRADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AGAD J'#39','#39'JELINA A. AGAD'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AGAN F'#39','#39'FORFERIO D. AGAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AGUSTIN B'#39','#39'BENEFREDO C. AGUSTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ALALONG A'#39','#39'ARNULFO M. ALALONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ALETA A'#39','#39'ALLAN B. ALETA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ALPECHE D'#39','#39'DANILO P. ALPECHE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ALPUERTO E'#39','#39'EMMANUEL P. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ALPUERTO M'#39','#39'MILDRED T. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AMELER R'#39','#39'REX E. AMELER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AMORADO E'#39','#39'ESTELA P. AMORADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AMPONG V'#39','#39'VIRGILIA C. AMPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ANI'#209'ON D'#39','#39'DANILO T. ANI'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ANTIQUINA E'#39','#39'EVENCIO G. ANTIQUINA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-APDUJAN J'#39','#39'JORGE A. APDUJAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-AYSON N'#39','#39'NERI B.AYSON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BAES D'#39','#39'DIVINO B. BAES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BAES R'#39','#39'RENE B. BAES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BAGSICAN R'#39','#39'ROEL B. BAGSICAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BAJE M'#39','#39'MARINA O. BAJE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BALIOS E'#39','#39'ELESERIO R. BALIOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BANGCAT G'#39','#39'GODOFREDA BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BANGCAT N'#39','#39'NARCISO S. BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BATULA N'#39','#39'NOEL O. BATULA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BAYER L'#39','#39'LEONARDO D. BAYER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BELHIDA L'#39','#39'LEONCIA F. BELHIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BELHIDA R'#39','#39'RICHARD S. BELHIDA SR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BELOTENDOS E'#39','#39'ELEAZAR M. BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BELOTENDOS V'#39','#39'VIOLETA L. BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BENDA'#209'O J'#39','#39'JOSEFINA J. BENDA'#209'O'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BERMUDEZ J'#39','#39'JOSEPH V. BERMUDEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BULADO C'#39','#39'CYNTHIA E. BULADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BULADO N'#39','#39'NILO D. BULADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BULANON P'#39','#39'PRIMO B. BULANON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BULAWIN R'#39','#39'REX E. BULAWIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-BU'#209'AO Ef'#39','#39'EFREN R. BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CABICAL B'#39','#39'BEATRIZ A. CABICAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CABILIN S'#39','#39'SAMUEL E. CABILIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CAERMARE C'#39','#39'CLAUDIO A. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CAERMARE E'#39','#39'ELPEDIO A. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CAERMARE JZ'#39','#39'JOSE ZANDRO C. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CA'#209'AREJO F'#39','#39'FAUSTINO M. CA'#209'AREJO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CANTILA A'#39','#39'ALEC A. CANTILA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CARDENAS J'#39','#39'JOANNA P. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CARDENAS V'#39','#39'VIRGINIO F. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CARLON V'#39','#39'VENANCIO M. CARLON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CASOLEM E'#39','#39'EDILBERTO A. CASOLEM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CASTOR E'#39','#39'EDUARDO B. CASTOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CATAHAY N'#39','#39'NICOMEDES D. CATAHAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CERNA DELA A'#39','#39'ALEJANDRO F. DELA CERNA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CONTRIVIDA A'#39','#39'ALMA O. CONTRIVIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CORIMO J'#39','#39'JERRY C. CORIMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CRUZ DELA R'#39','#39'REYNALDO F. DELA CRUZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CUENCA D'#39','#39'DIONESIO A. CUENCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CULANCULAN E'#39','#39'EDMUNDO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CULANCULAN R'#39','#39'ROMEO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-CULOT F'#39','#39'FLORENTINO M. CULOT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DAAROL T'#39','#39'TRANSFIGURACION DAAROL JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DABODA L'#39','#39'LARRY L. DABODA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DAMPAYLA M'#39','#39'MARIEVIC B. DAMPAYLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DESCALLAR N'#39','#39'NELSON A. DESCALLAR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DHARMDAS T'#39','#39'TIRTH B. DHARMDAS III'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DIGAMON E'#39','#39'ELMER B. DIGAMON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DOFITAS A'#39','#39'AVA A. DOFITAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DONDOYANO J'#39','#39'JULIETO L. DONDOYANO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-DORIMON F'#39','#39'FERNANDO E. DORIMON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ECHEVARRIA H'#39','#39'HERCULANO G. ECHEVARRIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ELUMBA R'#39','#39'ROLANDO Z. ELUMBA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ELUMBARING R'#39','#39'RICARDO S. ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-EMBOL L'#39','#39'LUCIA J. EMBOL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ESCABARTE R'#39','#39'ROSINNI S.ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ESTOLOGA R'#39','#39'RAYMUND P. ESTOLOGA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-FABILLAR D'#39','#39'ROEL D. FABILLAR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-FERNANDEZ A'#39','#39'AURIO M. FERNANDEZ JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-FERNANDEZ D'#39','#39'DESERIO T. FERNANDEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-FERRER J'#39','#39'JUN S.FERRER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-FLORIDA F'#39','#39'FLORDELIZ H. FLORIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-GAMIL E'#39','#39'EDWARD E. GAMIL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-GAMIL F'#39','#39'FLORIANO C. GAMIL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-GEROMO H'#39','#39'HAMILMARK P. GEROMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-GODMALIN A'#39','#39'ALEX B. GODMALIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-GUITARTE C'#39','#39'CLEOPATRA I. GUITARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ICALINA D'#39','#39'DEBORAH B. ICALINA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ICAO E'#39','#39'EDGARDO A. ICAO JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ICAO R'#39','#39'RUBEN C. ICAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-IMAN P'#39','#39'PATERNO C. IMAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-JANOLINO L'#39','#39'LEONARDO B. JANOLINO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-JUEVESANO R'#39','#39'ROSELLER G. JUEVESANO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-LAPINIG R'#39','#39'RONALD A. LAPINIG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-LAPUT A'#39','#39'ADELMO P. LAPUT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-LIM M'#39','#39'MARITH N. LIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-LUPAS O'#39','#39'OSIAS LUPAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MACASARTE R'#39','#39'ROGER O. MACASARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MACO R'#39','#39'ROMEO Q. MACO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MAGSAYO H'#39','#39'HERBERT M. MAGSAYO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MAGTUBA D'#39','#39'DANILO A. MAGTUBA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MEJIAS JR'#39','#39'JAIME ROY T. MEJIAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MEJORADA R'#39','#39'ROSEBELT D. MEJORADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MONDRES E'#39','#39'ERMIE L. MONDRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MOYWELA J'#39','#39'JOHANN S. MOYWELA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MURRO J'#39','#39'JERRY O. MURRO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-MUTIA C'#39','#39'CARMEN I. MUTIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-NAONG F'#39','#39'FAUSTINO C. NAONG JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-NODALO D'#39','#39'DANILO S. NODALO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-OBORDO E'#39','#39'EDEN A. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-OBORDO R'#39','#39'RAYMUND H. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-OGOC J'#39','#39'JULIUS L. OGOC'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-OMITA R'#39','#39'RODRIGO E. OMITA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ORE E'#39','#39'ELEGIO M. ORE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ORO C'#39','#39'CHRISTINA ORO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ORONG E'#39','#39'EFREN S. ORONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-OTTO L'#39','#39'LEONILO A. OTTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PACRES C'#39','#39'CARMELITA B. PACRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PAGE P'#39','#39'PACIANO R. PAGE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PAGENTE I'#39','#39'ISIDRA E. PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PARADIANG J'#39','#39'JOSELITO C. PARADIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PARDILLADA R'#39','#39'RUEL D. PARDILLADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-PIANG A'#39','#39'ARSENIO S. PIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-QUIZO J'#39','#39'JUSSAR C. QUIZO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-RAMOGA R'#39','#39'ROLANDO F. RAMOGA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-REGA'#209'ON J'#39','#39'JOEMAR V. REGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-REGA'#209'ON M'#39','#39'MAUREEN A. REGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-REGA'#209'ON S'#39','#39'SAMUEL L. REGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-REGENCIA R'#39','#39'RHODERICK D. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-REGENCIA W'#39','#39'WILLIAM B. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ROJO P'#39','#39'PAUL M. ROJO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ROVILLA R'#39','#39'RAMON M. ROVILLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-RUBIN C'#39','#39'CHARLITO E. RUBIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-RUIZ C'#39','#39'CLIFFORD O. RUIZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-RUIZ J'#39','#39'JOVENAL S. RUIZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-SACAL G'#39','#39'GIL Y. SACAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-SALATANDRE F'#39','#39'FLORENDA M. SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-SARITA A'#39','#39'ANTONIO A. SARITA JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-SARITA R'#39','#39'RIZALINO A. SARITA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-SIASICO A'#39','#39'ARMAND E. SIASICO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TAGAPAN M'#39','#39'MICHAEL M. TAJADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TAJADA H'#39','#39'HILARION C. TAJADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TAN C'#39','#39'CHARITO M. TAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TANJAY J'#39','#39'JAIME A. TANJAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TEJERO J'#39','#39'JEARY D. TEJERO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TIMTIM L'#39','#39'LEONORA I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TUANDA J'#39','#39'JOEL T. TUANDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-TUTO D'#39','#39'DAMIANO C. TUTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-VELARDE B'#39','#39'BAUTISTA M. VELARDE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-VELASCO J'#39','#39'JOCELYN D. VELASCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-VICERA D'#39','#39'DIOSDADO A. VICERA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-YAYONG P'#39','#39'PANFILO Y. YAYONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-YGO'#209'A A'#39','#39'ANTONIO P. YGO'#209'A'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-YUSON E'#39','#39'EDWARD P. YUSON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR31-ZOZOBRADO M'#39','#39'MARITESS L. ZOZOBRADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR32-ANDALAHAO E'#39','#39'EDUARDO ANDALAHAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR32-BULFA R'#39','#39'ROFELIA BULFA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR32-LIM M'#39','#39'MARY ANN LIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ACOYMO R'#39','#39'RAMONITO ACOYMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-AGUSTIN B'#39','#39'BENEFREDO AGUSTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ALETA A'#39','#39'ALLAN ALETA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ALPUERTO M'#39','#39'MILDRED ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-AMPONG V'#39','#39'VIRGILIA AMPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ANINON'#39','#39'DANILO T. ANINON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BANGCAT G'#39','#39'GODOFREDA F. BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BAUL'#39','#39'ALEJANDRO BAUL JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BAYER F'#39','#39'FELICULO BAYER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BAYER L'#39','#39'LEONARDO D. BAYER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BELOTENDOS V'#39','#39'VIOLETA L. BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BONGCAWEL A'#39','#39'ALEX BONGCAWEL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BRACAMONTE P'#39','#39'PEPITO BRACAMONTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BULADO C'#39','#39'CYNTHIA BULADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BULFA R'#39','#39'ROFELIA BULFA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-BU'#209'AO Ef'#39','#39'EFREN BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CABILIN S'#39','#39'SAMUEL CABILIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CAGULADA N'#39','#39'NELSONCAGULADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CALASANG B'#39','#39'BARBARA CALASANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CANTILA A'#39','#39'ALEC CANTILA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CARDENAS J'#39','#39'JOANNA P. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CARDENAS V'#39','#39'VIRGINIO F. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CARREON R'#39','#39'RUBEN CARREON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CASOLEM E'#39','#39'EDELBERTO CASOLEM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CASTOR E'#39','#39'EDUARDO CASTOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CORIMO'#39','#39'JERRY C. CORIMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CRESENCIO DG'#39','#39'DECEMBER GAY CRESENCIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-CULANCULAN R'#39','#39'ROMEO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-DAMPAYLA M'#39','#39'MARIEVIC DAMPAYLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-DHARMDAS'#39','#39'TIRTH DHARMDAS III'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-DUNQUE S'#39','#39'SETH DUNQUE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ELUMBARING F'#39','#39'FELIZARDO ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ELUMBARING M'#39','#39'MARIVIC B. ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ESCABARTE'#39','#39'ROSSINI ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ESCABARTE R'#39','#39'ROSINNI ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ESCALANTE C'#39','#39'CRISTOPHER ESCALANTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-FERRER J'#39','#39'JUN FERRER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-FLORIDA'#39','#39'FLORDELIZ H. FLORIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-GALAN E'#39','#39'EDUARDO GALAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-GUITARTE C'#39','#39'CLEOPATRA I. GUITARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-HAMOY'#39','#39'GENESIS DAVE HAMOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ICAO R'#39','#39'RUBIN C. ICAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-JAMAROLIN'#39','#39'ALLAN JAMES JAMAROLIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-LACQUIO R'#39','#39'REX T. LACQUIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-LAPUT A'#39','#39'ADELMO P. LAPUT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-LEE J'#39','#39'JUANITO LEE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-LIM'#39','#39'MARITH LIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-MACO R'#39','#39'ROMEO MACO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-MURRO J'#39','#39'JERRY MURRO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-MUTIA C'#39','#39'CARMEN I. MUTIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-OBORDO R'#39','#39'RAYMUND H. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ONI'#209'EZA B'#39','#39'BLADIMER ONI'#209'EZA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PAEZ P'#39','#39'PINKY PAEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PAGENTE I'#39','#39'ISIDRA E. PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PAGENTE MJ'#39','#39'MARY JANE PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PANORIL R'#39','#39'REMBERTO PANORIL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PARADIANG J'#39','#39'JOSELITO PARADIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-PERALTO G'#39','#39'GENIO PERALTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-REFUGIO C'#39','#39'CRISANTA REFUGIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-SALATANDRE F'#39','#39'FLORENDA SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-SEVILLENO'#39','#39'BERNADETTE SEVILLENO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-SUMALI R'#39','#39'R SUMALI'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-SY J'#39','#39'JOVY SY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TABIAS A'#39','#39'ARIEL TOBIAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TACUJAN'#39','#39'RENEWIL TACUJAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TAMPARONG R'#39','#39'ROMEO TAMPARONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TAN C'#39','#39'CHARITO TAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TANADOR T'#39','#39'TEOFILO R. TANADOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TANGCALAGAN R'#39','#39'RAUL TANGCALAGAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TIMTIM'#39','#39'LEONORA I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TOBIAS A'#39','#39'ARIEL TOBIAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-TUANDA J'#39','#39'J. TUANDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-VELASC0  J'#39','#39'JOCELYN VELASCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-VELASCO J'#39','#39'JOCELYN D. VELASCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-VILLARINO'#39','#39'LEPHYN VILLARNO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-VISITACION B'#39','#39'BELINDA VISITACION'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-YAYONG P'#39','#39'PAMPILO YAYONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR33-ZOZOBRADO M'#39','#39'MARITESS B. ZOZOBRADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-ANI'#209'ON'#39','#39'DANILO ANI'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-BU'#209'AO Ef'#39','#39'EFREN R. BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-CA'#209'AREJO F'#39','#39'FAUSTINO M. CA'#209'AREJO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-CULOT'#39','#39'FLORENTINO CULOT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-IMAN P'#39','#39'PATERNO IMAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-LEE J'#39','#39'JUANITO LEE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-MORANARTE'#39','#39'ALEXANDER M. MORANDARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-PAESTE C'#39','#39'CHHARMALOU PAESTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-REGA'#209'ON S'#39','#39'SAMUEL REGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-SALATANDRE F'#39','#39'FLORENDA M. SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR35-TUANDA J'#39','#39'JOEL T. TUANDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ADAZA CB'#39','#39'CESAR BEDA ADAZA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ALBOS E'#39','#39'ERWIN ALBOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ALPUERTO E'#39','#39'EMMANUEL P. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-AMORADO E'#39','#39'ESTELA P. AMORADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-BATULA N'#39','#39'NOEL BATULA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-BELHIDA'#39','#39'LEONCIA BELHIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-BELOTENDOS V'#39','#39'VIOLETA L. BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-BULADO C'#39','#39'CYNTHIA BULADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CAERMARE JZ'#39','#39'JOSE ZANDRO C. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CANTILA A'#39','#39'ALEC CANTILA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CARDENAS V'#39','#39'VIRGINIO F. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CASOLEM E'#39','#39'EDILBERTO CASOLEM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CASTOR E'#39','#39'EDUARDO B. CASTOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CUENCA De'#39','#39'DEXTER CUENCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CUENCA DX'#39','#39'DECTER CUENCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-CULANCULAN R'#39','#39'ROMEO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-DAMPAYLA M'#39','#39'MARIEVIC DAMPAYLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-DELARMENTE C'#39','#39'CHRISTOPHER DELARMENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-DUHAYLUNGSOD'#39','#39'"DUHAYLUNGSOD DOLFUS"'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ELUMBARING M'#39','#39'MARIVIC B. ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-EMBOL L'#39','#39'LUCIA EMBOL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-EMBUSCADO J'#39','#39'JOBBERT EMBUSCADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ESCABARTE R'#39','#39'ROSINNI S.ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-FERRER J'#39','#39'JUN FERRER'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-FLORIDA F'#39','#39'FLORDELIZ H. FLORIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-GUITARTE C'#39','#39'CLEOPATRA I. GUITARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ICALINA D'#39','#39'DEBORAH ICALINA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-IMAN P'#39','#39'PATERNO IMAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-LAPUT A'#39','#39'ADELMO P. LAPUT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-MACASARTE A'#39','#39'ARCHIE B. MACASARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-MERECIDO C'#39','#39'CHRISTINE MERECIDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-MUTIA C'#39','#39'CARMEN I. MUTIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-NAONG F'#39','#39'FAUSTINO C. NAONG JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-OBORDO E'#39','#39'EDEN A. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-OBORDO R'#39','#39'RAYMUND H. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ORONG H'#39','#39'HENEOLITO ORONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-PACRES C'#39','#39'CARMELITA B. PACRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-PAGE P'#39','#39'PACIANO PAGE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-PAGENTE I'#39','#39'ISIDRA E. PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-QUIZO J'#39','#39'QUIZO JUSSAR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-REGENCIA J'#39','#39'JOLSON L. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-SALATANDRE F'#39','#39'FLORENDA M. SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-SARITA R'#39','#39'RZALINO SARITA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-SIMYUNN J'#39','#39'JASMIN S. SIMYUNN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-SUMALPONG L'#39','#39'LOU MAR G. SUMALPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-TIMTIM L'#39','#39'LEONORA I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-YANO'#39','#39'MARCELO YANO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-YU C'#39','#39'CALIXTO YU'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'AR36-ZAMORA I'#39','#39'IVOR ZAMORA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ABEJERO RIEL'#39','#39'RIEL ABEJERO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ADAZA A'#39','#39'ARISTELA B. ADAZA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-AGNIS R'#39','#39'JESUS RAMO D. AGNIS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-AGUSTIN'#39','#39'STEPHEN AGUSTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-AGUSTIN S'#39','#39'STEPHEN AGUSTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ALBERASTINI'#39','#39'BENJIE N. ALBERASTINI'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ALETA A'#39','#39'ALLAN B. ALETA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ALPUERTO E'#39','#39'EMMANUEL P. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ALPUERTO M'#39','#39'MILDRED T. ALPUERTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-AMORADO E'#39','#39'ESTELA P. AMORADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-AMPONG V'#39','#39'VIRGILIA C. AMPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ANDILAB R'#39','#39'REYNALD ANDILAB'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-APDUJAN J'#39','#39'JORGIE  APDUJAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BAES D'#39','#39'DIVINO B. BAES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BAES R'#39','#39'REUEL E. BAES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BAGUIO E'#39','#39'EDGAR J. BAGUIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BANGCAL R'#39','#39'REYNOLD C. BANGCAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BANGCAT G'#39','#39'GODOFREDA BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BANGCAT N'#39','#39'NARCISO BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BANGCAT NA'#39','#39'CA-NARCISO BANGCAT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BATULA N'#39','#39'NOEL O. BATULA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BAUGBOG C'#39','#39'CARMELITA BAUGBOG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BELOTENDOS V'#39','#39'VIOLETA L. BELOTENDOS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BERMUDEZ'#39','#39'JOSEPH V. BERMUDEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BULADO C'#39','#39'BULADO E. CYNTHIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BU'#209'AO Ef'#39','#39'EFREN R. BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BU'#209'AO Eu'#39','#39'EUGENE G. BU'#209'AO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-BUSTALI'#209'O E'#39','#39'EVAN B. BUSTALI'#209'O'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CABICAL B'#39','#39'BEATRIZ CABICAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CABILIN'#39','#39'RANDY NELL C. CABILIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CABILIN E'#39','#39'EDROSA B. CABILIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'ca-caermare el'#39','#39'ELPEDIO CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CAERMARE JZ'#39','#39'JOSE ZANDRO C. CAERMARE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CANTILA A'#39','#39'ALEC A. CANTILA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CARDENAS J'#39','#39'JOANNA P. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CARDENAS V'#39','#39'VIRGINIO F. CARDENAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CASOLEM E'#39','#39'EDILBERTO A. CASOLEM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CASTOR E'#39','#39'EDUARDO B. CASTOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CATAHAY'#39','#39'NICOMEDES D. CATAHAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CATAHAY R'#39','#39'RICHIE M . CATAHAY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CO P'#39','#39'PETER Y. CO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-COMILLE A'#39','#39'ABNER A. COMILLE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CONTRIVIDA A'#39','#39'ALMA O. CONTRIVIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CORIMO J'#39','#39'JERRY C. CORIMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CORPORAL T'#39','#39'TESSIE C. CORPORAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CUARESMA G'#39','#39'GILBERT T. CUARESMA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CUENCA De'#39','#39'DEXTER T. CUENCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CUENCA Di'#39','#39'DIONESIO A. CUENCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-CULANCULAN R'#39','#39'ROMEO T. CULANCULAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DAAROL M'#39','#39'MANOLITO C. DAAROL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DAAROL T'#39','#39'TRANSFIGURACION S. DAAROL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DAMPAYLA M'#39','#39'MARIVIC DAMPAYLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DHARMDAS T'#39','#39'TIRTH B. DHARMDAS III'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DIGAMON E'#39','#39'ELMER B. DIGAMON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DIPUTADO A'#39','#39'AURITA R. DIPUTADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-DUHAYLUNGSOD D'#39','#39'DOLLFUSS M. DUHAYLUNGSOD'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ELCAMEL J'#39','#39'JOY  L.  ELCAMEL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ELUMBARING F'#39','#39'FRANCIS JONATHAN ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ELUMBARING M'#39','#39'MARIVIC  B.  ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ELUMBARING V'#39','#39'VELMOR O. ELUMBARING'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-EMBOL'#39','#39'LUCIA EMBOL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ENERO R'#39','#39'RONALD C. ENERO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ESCABARTE'#39','#39'ROSSINI  ESCABARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ESCALANTE C'#39','#39'CHRISTOPHER L. ESCALANTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-FERNANDEZ A'#39','#39'AURIO M. FERNANDEZ JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-FERNANDEZ D'#39','#39'DESERIO T. FERNANDEZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-FLORIDA F'#39','#39'FLORDELIZ H. FLORIDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-GALON F'#39','#39'FEDERICKO GALON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-GAMIL E'#39','#39'EDWARD E. GAMIL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-GODMALIN A'#39','#39'ALEX GODMALIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-GUITARTE C'#39','#39'CLEOPATRA I. GUITARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-HAMOY G'#39','#39'GENESIS DAVE C. HAMOY'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-HANGCAN E'#39','#39'ELVIS  HANGCAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ICAO E'#39','#39'ERIC  M.  ICAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ICAO ED'#39','#39'EDGARDO ICAO JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ICAO R'#39','#39'RUBEN C. ICAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-INOT'#39','#39'DULCE ROSARIO O. INOT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-JAMAROLIN AL'#39','#39'ALLAN JAMES JAMAROLIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-JAMOROL'#39','#39'SALVADOR JAMOROL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-JANOLINO SR.'#39','#39'LEONARDO JANOLINO SR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LACQUIO R'#39','#39'REX T. LACQUIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LAGUTIN La'#39','#39'LAWRENCE LAGUTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LAGUTIN Le'#39','#39'LEVY H. LAGUTIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LAPINIG R'#39','#39'RONALD A. LAPINIG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LAPUT A'#39','#39'ADELMO P. LAPUT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LIBRADILLA N'#39','#39'NERI A. LIBRADILLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LUAB C'#39','#39'CHARLITO V. LUAB SR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-LUPAS O'#39','#39'OSIAS P. LUPAS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MACASARTE A'#39','#39'ARCHIE B. MACASARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MACASARTE R'#39','#39'ROGER O. MACASARTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MAGTUBA M'#39','#39'MARILOU J. MAGTUBA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MANDANTTES L'#39','#39'LIEZEL J. MANDANTES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MANLUPIG F'#39','#39'FRANCISCO J. MANLUPIG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MERECIDO C.'#39','#39'CHRISTINE S. MERECIDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MONTA'#209'O P'#39','#39'PANCRATIUS MONTA'#209'O'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MURRO'#39','#39'JERRY O. MURRO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-MUTIA C'#39','#39'CARMEN I. MUTIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-NAONG F'#39','#39'FAUSTINO C. NAONG JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-NAPIGKIT E'#39','#39'ELIEZER S. NAPIGKIT'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-NATAA'#39','#39'CITA T. NATAA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-NODALO D'#39','#39'DANILO S. NODALO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-OBORDO E'#39','#39'EDEN A. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-OBORDO R'#39','#39'RAYMUND H. OBORDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-OTTO L'#39','#39'LEONILO A. OTTO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PACRES C'#39','#39'CARMELITA B. PACRES'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PAGENTE I'#39','#39'ISIDRA E. PAGENTE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PALUCA'#39','#39'CA-CEL RYAN PALUCA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PALUCA CR'#39','#39'CR Paluca'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PANOY JR'#39','#39'HIPOLITO A. PANOY JR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PARADIANG J'#39','#39'JOSELITO C. PARADIANG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PASOK'#39','#39'AMELIA  I.  PASOK'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-PONCE F'#39','#39'FLOR DE MAE N. PONCE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-QUI'#209'ANOLA R'#39','#39'RADON T. QUI'#209'ANOLA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-QUIZO J'#39','#39'JUSSAR C. QUIZO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-RAMOGA R'#39','#39'ROLANDO F. RAMOGA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-REGA'#209'ON M'#39','#39'MAUREEN RAGA'#209'ON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-REGENCIA J'#39','#39'JOSE JOLSON L. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-REGENCIA M'#39','#39'MA. ROJEAN D. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-REGENCIA R'#39','#39'RHODERICK D. REGENCIA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ROGERS M.'#39','#39'ROGERS MARGIE JUMAWAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-RUBEN C'#39','#39'RUBEN Charlito'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-RUBIN C'#39','#39'CHARLITO E. RUBIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-RUIZ J'#39','#39'JOVENAL RUIZ'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SAGARIO L'#39','#39'LOU MARVIN D. SAGARIO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SAGUIN N'#39','#39'N JESSIE FRANCIS B. SAGUIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SALATANDRE F'#39','#39'FLORENDA M. SALATANDRE'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SANGUAL MC'#39','#39'MC KINDLEY  P.  SANGUAL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SARITA A'#39','#39'ANTONIO A. SARITAJR.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SARITA R'#39','#39'RIZALINO A. SARITA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SIMYUNN J'#39','#39'JASMIN S. SIMYUNN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-SUMALPONG L'#39','#39'LOU MAR G. SUMALPONG'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TAJADA H'#39','#39'HILARION C. TAJADA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TANADOR T'#39','#39'TEOFILO R. TANADOR'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TANGCALAGAN R'#39','#39'RAUL  A. TANGCALAGAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TAYRUS JE'#39','#39'JESUS EDWARDO R. TAYRUS'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TEJERO J'#39','#39'JEARY D. TEJERO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TIMTIM J'#39','#39'JHOANNIE I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TIMTIM L'#39','#39'LEONORA I. TIMTIM'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-TUANDA J'#39','#39'JOEL T. TUANDA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-VELASCO J'#39','#39'JOCELYN D. VELASCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-VILLARINO L'#39','#39'LEPHYN G. VILLARINO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-YANO MA'#39','#39'CA-MARCELO YANO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-YU C.'#39','#39'CA- CALIXTO YU'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-YUSON E'#39','#39'EDWARD YUSON'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ZAMORA I'#39','#39'IVOR T. ZAMORA'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'CA-ZOZOBRADO M'#39','#39'MARITESS B. ZOZOBRADO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'JO-1'#39','#39'JV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'MBTC-CDO'#39','#39'MBTC-CDO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'MD_DMO'#39','#39'Meter Deposit - DMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'MD_LAO'#39','#39'Meter Deposit - LAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'MD_PAO'#39','#39'Meter Deposit - PAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'MD_SAO'#39','#39'Meter Deposit - SAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'O/U - DMO'#39','#39'Overages - DMO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'O/U - LAO'#39','#39'Overages - LAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'O/U - PAO'#39','#39'Overages - PAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'O/U - SAO'#39','#39'Overages - SAO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PASOK A'#39','#39'AMELIA  I.  PASOK'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'POLE-Amatic'#39','#39'Amatic Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'POLE-Tampilisan'#39','#39'Tampilisan Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - BAYANTEL'#39','#39'BAYANTEL'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - CAIZZER-SIN'#39','#39'CAIZZER CABLE TV-SINDANGAN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Cruztelco Dap.'#39','#39'CRUZTELCO Dapitan City'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Cruztelco Dip.'#39','#39'CRUZTELCO Dipolog City'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Cruztelco Sind.'#39','#39'CRUZTELCO Sindangan Z.N.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Dapitan Cable'#39','#39'Dapitan City Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Dipolog Cable'#39','#39'Dipolog City Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - DOTC'#39','#39'Pole Rental - DOTC'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - GRAPHELD'#39','#39'GRAPHELD-B CABLE TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Ipitelco'#39','#39'IPILTELCO'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Labason Cable'#39','#39'Labason Cable TV System'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Liloy Cable'#39','#39'Liloy Cable TV System'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - MANUKANCABLE'#39','#39'MANUKAN CABLE TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Orient Cable'#39','#39'Orient Cable'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - PILTEL Dip/Dap'#39','#39'PILTEL DIP/DAP'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - PILTEL SIA/SIIN'#39','#39'PILTEL/PLDT SIA/SIN'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Pi'#241'an Cable'#39','#39'Pi'#241'an Cable Antenna Television'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Prime Cable'#39','#39'Prime Cable Vision Inc.'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - RB Rizal'#39','#39'Rural Bank of Rizal'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Salug Cable'#39','#39'Salug Cable TV System'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR - Tampilisan'#39','#39'Tampilisan Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'PR-Amatic'#39','#39'Amatic Cable TV'#39');'
      
        'insert into zanecoacctg.schedule (schedcode, description) values' +
        ' ('#39'RMAUREEN REGA'#209'ON'#39','#39'MAUREEN REGA'#209'ON'#39');')
    Left = 8
    Top = 24
  end
end
