        ��  ��                  �  @   ��
 P L U G I N P R O J E C T C O D E       0         {*******************************************************}
{                                                       }
{       �ͻ����                                        }
{                                                       }
{       ��Ȩ���� (C) 2009 ����������                    }
{                                                       }
{*******************************************************}


library %s;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  uClientPlugin,
  Classes,
  uPlugin in 'uPlugin.pas' {LHCPlugin: TLHCClientPlugin},
  uBase in '..\..\Common\uBase.pas',
  BaseForm in '..\..\Common\BaseForm.pas' {frmBase},
  ChildForm in '..\..\Common\ChildForm.pas' {frmChild},
  ModalForm in '..\..\Common\ModalForm.pas' {frmModal},
  uClientForm in 'uClientForm.pas' {FrmClient};

{$E plg}
{$R *.res}

Exports
  RegisterClientPlugin;

begin
//
end.