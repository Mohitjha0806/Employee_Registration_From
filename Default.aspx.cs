using System;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl_Handicapped_Type.Visible = false;
        lbl_Handicapped_Type.Visible = false;
        ddl_Disability.Visible = false;
        lbl_Disability.Visible = false;
        spn_Handicapped_Type.Visible = false;
        spn_Handicapped_Disability.Visible = false;



    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        int FExperience = int.Parse(txt_FExperience.Text);
        int SExperience = int.Parse(txt_SExperience.Text);
        int TWExperience = (FExperience + SExperience);
        txt_TWExperience.Text = TWExperience.ToString("");
    }



    protected void btn_Next_Click1(object sender, EventArgs e)
    {

            Fullform.Visible = true;

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        ddl_Handicapped_Type.Items.Clear();
        ddl_Disability.Items.Clear();
        //Fullform.Visible = true;



        if (ddl_Handicapped.SelectedValue == "Yes")
        {

            ddl_Handicapped_Type.Visible = true;
            lbl_Handicapped_Type.Visible = true;
            ddl_Disability.Visible = true;
            lbl_Disability.Visible = true;
            spn_Handicapped_Type.Visible = true;
            spn_Handicapped_Disability.Visible = true;

            ddl_Handicapped_Type.Items.Add(new ListItem("Cerebral palsy"));
            ddl_Handicapped_Type.Items.Add(new ListItem("Vision Impairment"));
            ddl_Handicapped_Type.Items.Add(new ListItem("Hearing Impairment"));

            ddl_Disability.Items.Add(new ListItem("20%"));
            ddl_Disability.Items.Add(new ListItem("40%"));
            ddl_Disability.Items.Add(new ListItem("50%"));
            ddl_Disability.Items.Add(new ListItem("80%"));
            ddl_Disability.Items.Add(new ListItem("100%%"));
        }
       
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {



        var text1 = int.Parse(txt_FExperience.Text);
        var text2 = int.Parse(txt_SExperience.Text);
        var total = text1 + text2;
        txt_TWExperience.Text = total.ToString();

        div_report.Visible = true;

        tblc_Previous_Office_Name.Text = txt_Privious_Office_Name.Text;
        tblc_Previous_Office_Experience.Text = txt_Privious_Office_Experience.Text;
        tblc_Last_Office_Name.Text = txt_Second_Last_Office_Name.Text;
        tblc_Last_Office_Experience.Text = txt_Second_Last_LOffice_exprience.Text;
        tblc_Employee_Unique_Id.Text = txt_Employee_Unique_Id.Text;

        tblc_Employ_First_name.Text = txtFname.Text;
        tblc_Employ_Middle_name.Text = txtMname.Text;
        tblc_Employ_Last_name.Text = txtLname.Text;
        tblc_Father_Name.Text = txt_Father_Name.Text;
        tblc_Date_of_Birth.Text = txt_DOB.Text;

        tblc_Gender.Text = ddl_Gender.Text;
        tblc_Category.Text = ddl_Category.Text;
        tblc_Handicapped.Text = ddl_Handicapped.Text;
        tblc_Handicapped_Type.Text = ddl_Handicapped_Type.Text;
        tblc_Disability.Text = ddl_Disability.Text;

        tblc_Aadhar.Text = txt_Aadhar.Text;
        tblc_Samagra.Text = txt_Samagra.Text;
        tblc_PRAN.Text = txt_PRAN.Text;
        tblc_PAN.Text = txt_PanNo.Text;
        tblc_Email.Text = txtEmail.Text;

        tblc_Mobile.Text = txt_Mobile.Text;
        tblc_Password.Text = txt_Password.Text;
        tblc_Re_Password.Text = txt_RePassword.Text;

    }


}
