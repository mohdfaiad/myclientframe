        ��  ��                  M  L   ��
 P L U G I N M O D U L E S O U R C E C O D E         0         {*******************************************************}
{                                                       }
{       �ͻ����                                        }
{                                                       }
{       ��Ȩ���� (C) 2009 ����������                    }
{                                                       }
{*******************************************************}
unit %0:s;

interface

uses
  SysUtils, Classes,uClientPlugin;

type
  T%1:s = class(T%2:s)
  private
    { Private declarations }
  public
    Destructor Destroy;override;
    { Public declarations }
  end;

var
  %1:s: T%1:s;

function RegisterClientPlugin : T%1:s; stdcall;

implementation

{$R *.dfm}

uses uClientForm;

function RegisterClientPlugin : T%1:s;
begin
  %1:s := T%1:s.Create(nil);
  if %1:s.PluginInfo.PluginName<>'' then %1:s.Name := %1:s.PluginInfo.PluginName;
  %1:s.MainForm := TFrmClient;
  Result := %1:s;
end;

{ TLHCPlugin }

Destructor T%1:s.Destroy;
{
����ͷţ��˹��̱ز�����;
}
begin
  inherited destroy;
end;
end.   