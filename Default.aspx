<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_o2zqtknc" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #003399;
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 0px">
        <h1 class="auto-style2"><span class="auto-style1">   Click2Cloud User Registration Dashboard</span><br />
        </h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="UserRegDashboardDataSetTableAdapters.GetRegistrationDetailsForInternalReportTableAdapter"></asp:ObjectDataSource>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="" ShowBackButton="False" ShowFindControls="True" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="8pt" Width="" Font-Strikeout="False" ShowPageNavigationControls="True" SizeToReportContent="True" ShowZoomControl="False">
            <LocalReport ReportPath="Report1.rdlc" DisplayName="Click2Cloud User Registration Dashboard">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="UserDataset1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
    </div>
    </form>
</body>
</html>
