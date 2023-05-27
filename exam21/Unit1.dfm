object Form1: TForm1
  Left = 344
  Top = 185
  Caption = 'TH to Spec'
  ClientHeight = 303
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 179
    Width = 100
    Height = 30
    Caption = 'Transfer'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 251
    Width = 100
    Height = 30
    Caption = 'Clear Files'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 215
    Width = 100
    Height = 30
    Caption = 'Gen Data'
    TabOrder = 2
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 17
    Width = 161
    Height = 156
    Caption = 'Parameters'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 27
      Width = 75
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Damping Ratio'
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 75
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Max Period(s)'
    end
    object Label3: TLabel
      Left = 8
      Top = 81
      Width = 75
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Period Step(s)'
    end
    object Label4: TLabel
      Left = 8
      Top = 107
      Width = 75
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Acc Unit'
    end
    object Edit1: TEdit
      Left = 87
      Top = 24
      Width = 58
      Height = 21
      TabOrder = 0
      Text = '0.05'
    end
    object Edit2: TEdit
      Left = 87
      Top = 51
      Width = 58
      Height = 21
      TabOrder = 1
      Text = '6'
    end
    object Edit3: TEdit
      Left = 87
      Top = 78
      Width = 58
      Height = 21
      TabOrder = 2
      Text = '0.1'
    end
    object ComboBox1: TComboBox
      Left = 87
      Top = 104
      Width = 59
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 1
      TabOrder = 3
      Text = 'gal'
      Items.Strings = (
        'm/s2'
        'gal'
        'mm/s2')
    end
  end
  object GroupBox2: TGroupBox
    Left = 183
    Top = 8
    Width = 201
    Height = 273
    Caption = 'Spectrum Data'
    TabOrder = 4
    object Memo1: TMemo
      Left = 16
      Top = 25
      Width = 166
      Height = 232
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
