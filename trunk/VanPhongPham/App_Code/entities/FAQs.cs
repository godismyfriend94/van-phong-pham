using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for FAQs
/// </summary>
public class FAQs
{
    int faqId;
    string question;
    string answer;
    int faqIndex;
    string statusId;

    public int FaqId
    {
        get { return faqId; }
        set { faqId = value; }
    }

    public string Question
    {
        get { return question; }
        set { question = value; }
    }

    public string Answer
    {
        get { return answer; }
        set { answer = value; }
    }

    public int FaqIndex
    {
        get { return faqIndex; }
        set { faqIndex = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

	public FAQs()
	{

	}
}
