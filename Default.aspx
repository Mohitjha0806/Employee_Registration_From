<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
</head>
<body class="bg-success-subtle">
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary runat="server" ID="ValidationSummary1" ValidationGroup="a" ShowValidationErrors="true" ShowMessageBox="true" ShowSummary="false" />
            <div class="container-fluid bg-success-subtle">
                <div class="container mt-2 bg-success-emphasis">
                    <h1 class="display-5 text-center text-dark-subtle fw-semibold">Eligibility Criteria</h1>
                    <div class="row form-control border-3 border-dark-subtle bg-warning-subtle w-auto  py-5 mt-5">

                        <h2 class="text-start">Work Experience</h2>
                        <div class="col-md-7 mt-4">
                            <asp:Label Text="First Experience" ID="lbl_FExperience" runat="server" CssClass="h6 form-label" />
                            <asp:TextBox runat="server" ID="txt_FExperience" CssClass="form-control border-primary-subtle border-2" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Required" ControlToValidate="txt_FExperience" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ErrorMessage="Invalid Experience"
                                ValidationExpression="^(0|[1-9]\d*)$" ControlToValidate="txt_FExperience" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-7">
                            <asp:Label Text="Second Experience" ID="lbl_SExperience" runat="server" CssClass="h6 form-label" />
                            <asp:TextBox runat="server" ID="txt_SExperience" CssClass="form-control border-primary-subtle border-2" />
                            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Required" ControlToValidate="txt_SExperience" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ForeColor="Red" ErrorMessage="Invalid Experience" ValidationExpression="^(0|[1-9]\d*)$" ControlToValidate="txt_SExperience" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-7 mt-2">
                            <asp:Button ID="btn_Add" class="btn btn-success" OnClick="btn_Add_Click" Text="Add" runat="server" AutoPostBack="true" />
                        </div>

                        <div class="col-md-7">
                            <asp:Label Text="Total work experience" ID="lbl_TWExperience" runat="server" CssClass="h6 form-label" />
                            <asp:TextBox runat="server" ID="txt_TWExperience" CssClass="form-control border-primary-subtle border-2" />
                            <asp:RegularExpressionValidator ForeColor="Red" ErrorMessage="Sorry You are not fill the eligibility Criteria" ValidationExpression="^(?:[4-9]|[1-3][0-9]|40)$"
                                ControlToValidate="txt_TWExperience" runat="server" Display="Dynamic" />
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-7 text-start justify-content-end">
                                <asp:Button CssClass="btn btn-primary" ID="btn_Next" Text="Next" runat="server" OnClick="btn_Next_Click1" />
                            </div>
                        </div>
                    </div>
                    <div id="Fullform" runat="server" visible="false" class="row from-control rounded bg-secondary-subtle border border-3 border-dark-subtle mt-3">
                        <div class="row g-3 mt-2 py-5 ">


                            <h1 class="fs-3 fw-semibold text-start">Fullfill This form</h1>
                            <div class="col-md-7">
                                <asp:Label Text="Privious Office Name" runat="server" ID="lbl_Privious_Office_Name" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                <asp:TextBox runat="server" ID="txt_Privious_Office_Name" CssClass="form-control border-2 border-primary-subtle" Placeholder="Amazon/TCS/Microsoft etc." MaxLength="20" />
                                <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Privious Office Name."
                                    ControlToValidate="txt_Privious_Office_Name" runat="server" Display="Dynamic" />
                                <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$"
                                    ErrorMessage="Enter Valid Office Name" ControlToValidate="txt_Privious_Office_Name" runat="server" Display="Dynamic" />
                            </div>

                            <div class="col-md-5">
                                <asp:Label Text="Privious Office Experience" runat="server" ID="lbl_Privious_Office_Experience" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                <asp:TextBox runat="server" Placeholder="Years" ID="txt_Privious_Office_Experience" CssClass="form-control border-2 border-primary-subtle" MaxLength="20" />
                                <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Enter Valid Experience" ControlToValidate="txt_Privious_Office_Experience" runat="server" Display="Dynamic" />
                                <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[4-9]{1}$" ErrorMessage="Enter Valid Experience" ControlToValidate="txt_Privious_Office_Experience" runat="server" Display="Dynamic" />
                            </div>

                            <div class="col-md-7">
                                <asp:Label Text="Second Last Office Name" runat="server" ID="lbl_Second_Last_Office_Name" CssClass="form-label fw-semibold" />
                                <asp:TextBox runat="server" ID="txt_Second_Last_Office_Name" CssClass="form-control border-2 border-primary-subtle" Placeholder="Amazon/TCS/Microsoft etc." MaxLength="20" />
                                <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter Valid Experience" ControlToValidate="txt_Second_Last_Office_Name" runat="server" Display="Dynamic" />
                            </div>

                            <div class="col-md-5">
                                <asp:Label Text="Second Last Office exprience" runat="server" ID="lbl_Second_Last_LOffice_exprience" CssClass="form-label fw-semibold" />
                                <asp:TextBox runat="server" Placeholder="Years" ID="txt_Second_Last_LOffice_exprience" CssClass="form-control border-2 border-primary-subtle" MaxLength="20" />
                                <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[4-9]{1}$" ErrorMessage="Enter Valid Experience" ControlToValidate="txt_Second_Last_LOffice_exprience" runat="server" Display="Dynamic" />
                            </div>

                            <div class="col-md-7">
                                <asp:Label Text="Employee Unique Id" runat="server" ID="lbl_Employee_Unique_Id" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                <asp:TextBox runat="server" ID="txt_Employee_Unique_Id" CssClass="form-control border-2 border-primary-subtle" Placeholder="12 Digit" MaxLength="12" />
                                <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="12 Digit."
                                    ControlToValidate="txt_Employee_Unique_Id" runat="server" Display="Dynamic" />
                                <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[0-9]{12}$"
                                    ErrorMessage="Enter valid Unique Id." ControlToValidate="txt_Employee_Unique_Id" runat="server" Display="Dynamic" />
                            </div>

                            <div class="row mt-2">
                                <div class="col-md-4 mt-2">
                                    <asp:Label Text="Fisrt Name" runat="server" ID="lblFname" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txtFname" CssClass="form-control border-2 border-primary-subtle" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter first your name." ControlToValidate="txtFname" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter valid name"
                                        ControlToValidate="txtFname" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-4 mt-2 ">
                                    <asp:Label Text="Middle Name" runat="server" ID="lblMname" CssClass="form-label fw-semibold" />
                                    <asp:TextBox runat="server" ID="txtMname" CssClass="form-control border-2 border-primary-subtle" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter valid name"
                                        ControlToValidate="txtMname" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-4  mt-2">
                                    <asp:Label Text="Last Name" runat="server" ID="lblLname" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txtLname" CssClass="form-control border-2 border-primary-subtle" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your last name." ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ErrorMessage="Enter valid name"
                                        ControlToValidate="txtLname" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6 mt-2 ">
                                    <asp:Label Text="Father Name" runat="server" ID="lbl_Father_Name" CssClass="form-label fw-semibold" />
                                    <asp:TextBox runat="server" ID="txt_Father_Name" CssClass="form-control border-2 border-primary-subtle" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter father name." ControlToValidate="txt_Father_Name" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" ValidationGroup="a" ErrorMessage="Enter valid name"
                                        ControlToValidate="txt_Father_Name" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-6 mt-2">
                                    <asp:Label Text="Date Of Birth" ID="lbl_DOB" runat="server" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txt_DOB" CssClass="form-control border-2 border-primary-subtle" TextMode="Date" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your date of birth." ControlToValidate="txt_DOB" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6 mt-2">
                                    <asp:Label Text="Gender" ID="lbl_Gender" runat="server" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:DropDownList ID="ddl_Gender" CssClass="form-control   border-2 border-primary-subtle" runat="server">
                                        <asp:ListItem Value="Select" Text="Select" />
                                        <asp:ListItem Value="Male" Text="Male" />
                                        <asp:ListItem Value="Female" Text="Female" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your Gender." ControlToValidate="ddl_Gender" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6 mt-2">
                                    <asp:Label Text="Category" ID="lbl_Category" runat="server" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:DropDownList ID="ddl_Category" CssClass="form-control  border-2 border-primary-subtle" runat="server">
                                        <asp:ListItem Value="Select" Text="Select" />
                                        <asp:ListItem Value="Gernal" Text="General" />
                                        <asp:ListItem Value="ObC" Text="OBC" />
                                        <asp:ListItem Value="ST" Text="ST" />
                                        <asp:ListItem Value="SC" Text="SC" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your Category." ControlToValidate="ddl_Category" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-4 mt-2">
                                    <asp:Label Text="Handicapped" ID="lbl_Handicapped" runat="server" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:DropDownList ID="ddl_Handicapped" CssClass="form-control  border-2 border-primary-subtle" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Text="No" Value="No" />
                                        <asp:ListItem Text="Yes" Value="Yes" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select." ControlToValidate="ddl_Handicapped" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-4 mt-2">
                                    <asp:Label Text="Handicapped Type" ID="lbl_Handicapped_Type" runat="server" CssClass="form-label fw-semibold" /><span runat="server" id="spn_Handicapped_Type" class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:DropDownList ID="ddl_Handicapped_Type" CssClass="form-control  border-2 border-primary-subtle" runat="server">
                                    </asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your Category." ControlToValidate="ddl_Handicapped_Type" runat="server" Display="Dynamic" />--%>
                                </div>
                                <div class="col-md-4 mt-2">
                                    <asp:Label Text="Disability %" ID="lbl_Disability" runat="server" CssClass="form-label fw-semibold" /><span runat="server" id="spn_Handicapped_Disability" class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:DropDownList ID="ddl_Disability" CssClass="form-control  border-2 border-primary-subtle" runat="server">
                                    </asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please select your Category." ControlToValidate="ddl_Disability" runat="server" Display="Dynamic" />--%>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label Text="Aadhar No." runat="server" ID="lbl_Aadhar" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txt_Aadhar" CssClass="form-control border-2 border-primary-subtle" MaxLength="12" Placeholder="12 DIgit." />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Aadhar No."
                                        ControlToValidate="txt_Aadhar" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[0-9]{12}$"
                                        ErrorMessage="Enter valid Aadhar No." ControlToValidate="txt_Aadhar" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Label Text="Samagra ID." runat="server" ID="lbl_Samagra" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txt_Samagra" CssClass="form-control border-2 border-primary-subtle" MaxLength="9" Placeholder="9 Digit" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter Samagra No."
                                        ControlToValidate="txt_Samagra" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[0-9]{9}$"
                                        ErrorMessage="Enter valid Samagra No." ControlToValidate="txt_Samagra" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Label Text="PRAN no." runat="server" ID="lbl_PRAN" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txt_PRAN" CssClass="form-control border-2 border-primary-subtle" MaxLength="10" Placeholder="10 Digit" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter PRAN No."
                                        ControlToValidate="txt_PRAN" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[0-9]{10}$"
                                        ErrorMessage="Enter valid PRAN No." ControlToValidate="txt_PRAN" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-6">
                                    <asp:Label Text="PAN No." runat="server" ID="lbl_PanNo" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" Placeholder="ABCTY1234D" ID="txt_PanNo" CssClass="form-control border-2 border-primary-subtle" MaxLength="10" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter PAN No." ControlToValidate="txt_PanNo" runat="server" Display="Dynamic" />

                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[A-Z]{5}[0-9]{4}[A-Z]{1}$"
                                        ErrorMessage="Please Enter Valid Pan Card No."
                                        ControlToValidate="txt_PanNo" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Label Text="Email" runat="server" CssClass="form-label fw-semibold" ID="lbl_Email" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" CssClass="form-control border-2 border-primary-subtle" ID="txtEmail" Placeholder="example@gmail.com" MaxLength="24" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your email." ControlToValidate="txtEmail" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[a-zA-Z.0-9]+@[g]{1}[m]{1}[a]{1}[i]{1}[l]{1}[.]{1}[c]{1}[o]{1}[m]{1}$"
                                        ErrorMessage="Enter valid email." ControlToValidate="txtEmail" runat="server" Display="Dynamic" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Label Text="Mobile No." runat="server" CssClass="form-label fw-semibold" ID="lbl_Mobile" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" CssClass="form-control border-2 border-primary-subtle" ID="txt_Mobile" MaxLength="10" placeholder="10 Digit" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please enter your mobile number." ControlToValidate="txt_Mobile" runat="server" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^[6-9]{1}[0-9]{9}$" ErrorMessage="Enter valid number" ControlToValidate="txt_Mobile" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-6">
                                    <asp:Label Text="Password" runat="server" ID="lbl_Password" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" Placeholder="Abcd@1234" ID="txt_Password" CssClass="form-control border-2 border-primary-subtle" MaxLength="10" TextMode="Password" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Enter Password" ControlToValidate="txt_Password" runat="server" Display="Dynamic" />

                                    <asp:RegularExpressionValidator ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}"
                                        ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                                        ControlToValidate="txt_Password" runat="server" Display="Dynamic" />
                                </div>

                                <div class="col-md-6">
                                    <asp:Label Text="Re-enter Password" runat="server" ID="lbl_RePassword" CssClass="form-label fw-semibold" /><span class="mx-2 h6 fw-bold text-danger">*</span>
                                    <asp:TextBox runat="server" ID="txt_RePassword" CssClass="form-control border-2 border-primary-subtle" Placeholder="Same As Password" MaxLength="10" TextMode="Password" />
                                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Re-Enter Password." ValidationGroup="a" ControlToValidate="txt_RePassword" runat="server" Display="Dynamic" />
                                    <asp:CompareValidator ErrorMessage="Password Not Matched" ControlToValidate="txt_RePassword" ValidationGroup="a" ForeColor="Red" runat="server" ControlToCompare="txt_Password" />
                                </div>

                                <div class="col-md-7 text-start justify-content-end">
                                    <asp:Button CssClass="btn btn-primary" ID="btn_Submit" Text="Submit" runat="server" OnClick="btn_Submit_Click" />
                                </div>
                                <div id="div_report" visible="false" runat="server" class="container-fluid mt-5">
                                    <div class="container">
                                        <h1 class="fs-2 fw-semibold text-center fw-semibold">Report Page</h1>
                                        <div class="row mt-1">
                                            
                                                <asp:Table runat="server" CssClass="table table-danger table-hover mt-1 border-3">
                                                    <asp:TableHeaderRow>
                                                        <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                                        <asp:TableHeaderCell>Previous Office Name</asp:TableHeaderCell>
                                                        <asp:TableHeaderCell>Previous Office Experience</asp:TableHeaderCell>
                                                        <asp:TableHeaderCell>Last Office Name</asp:TableHeaderCell>
                                                        <asp:TableHeaderCell>Last Office Experience</asp:TableHeaderCell>
                                                        <asp:TableHeaderCell>Employee Unique Id</asp:TableHeaderCell>
                                                    </asp:TableHeaderRow>
                                                    <asp:TableRow runat="server">
                                                        <asp:TableHeaderCell>1.</asp:TableHeaderCell>
                                                        <asp:TableCell ID="tblc_Previous_Office_Name"></asp:TableCell>
                                                        <asp:TableCell ID="tblc_Previous_Office_Experience"></asp:TableCell>
                                                        <asp:TableCell ID="tblc_Last_Office_Name"></asp:TableCell>
                                                        <asp:TableCell ID="tblc_Last_Office_Experience"></asp:TableCell>
                                                        <asp:TableCell ID="tblc_Employee_Unique_Id"></asp:TableCell>
                                                    </asp:TableRow>
                                                </asp:Table>
                                            
                                        </div>
                                        <div class="row ">
                                            <asp:Table runat="server" CssClass="table table-danger table-hover  border-3">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Employ First name</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Employ Middle name</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Employ Last name</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Father Name</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Date of Birth</asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow runat="server">
                                                    <asp:TableHeaderCell>2.</asp:TableHeaderCell>
                                                    <asp:TableCell ID="tblc_Employ_First_name"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Employ_Middle_name"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Employ_Last_name"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Father_Name"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Date_of_Birth"></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <div class="row ">
                                            <asp:Table runat="server" CssClass="table table-danger table-hover  border-3">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Gender</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Category</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Handicapped</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Handicapped Type</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Disability</asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow runat="server">
                                                    <asp:TableHeaderCell>3.</asp:TableHeaderCell>
                                                    <asp:TableCell ID="tblc_Gender"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Category"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Handicapped"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Handicapped_Type"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Disability"></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <div class="row ">
                                            <asp:Table runat="server" CssClass="table table-danger table-hover  border-3">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Aadhar No.</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Samagra Id.</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>PRAN no.</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>PAN no.</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Email Id</asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow runat="server">
                                                    <asp:TableHeaderCell>4.</asp:TableHeaderCell>
                                                    <asp:TableCell ID="tblc_Aadhar"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Samagra"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_PRAN"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_PAN"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Email"></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <div class="row">
                                            <asp:Table runat="server" CssClass="table table-danger table-hover border-3">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>#</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell> Mobile No.</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Password</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Re-Password</asp:TableHeaderCell>

                                                </asp:TableHeaderRow>
                                                <asp:TableRow runat="server">
                                                    <asp:TableHeaderCell>5.</asp:TableHeaderCell>
                                                    <asp:TableCell ID="tblc_Mobile"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Password"></asp:TableCell>
                                                    <asp:TableCell ID="tblc_Re_Password"></asp:TableCell>

                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
