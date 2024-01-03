program ServerDataSnapDelphi;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  frmPrincipal in 'view\frmPrincipal.pas' {Form1},
  uServerMethods in 'controller\uServerMethods.pas',
  uWebModule in 'model\uWebModule.pas' {WebModule1: TWebModule},
  uConnectionDao in 'dao\uConnectionDao.pas',
  uTools in 'model\uTools.pas',
  uLogger in 'model\uLogger.pas',
  uUserControl in 'controller\uUserControl.pas',
  uUserModel in 'model\uUserModel.pas',
  uUserDao in 'dao\uUserDao.pas',
  uSystem.JSONUtil in 'model\uSystem.JSONUtil.pas',
  uFileControl in 'controller\uFileControl.pas',
  uFileModel in 'model\uFileModel.pas',
  uFileDao in 'dao\uFileDao.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
