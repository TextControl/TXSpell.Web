using System.Web.UI;
using System.Web.UI.WebControls;

namespace txspell_aspnet
{
    public partial class WebForm1 : Page
    {
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TXTextControl.Proofing.TXSpell txSpell1 = new TXTextControl.Proofing.TXSpell();
            txSpell1.Create();

            txSpell1.Check(args.Value);

            if (txSpell1.IncorrectWords.Count == 0)
                args.IsValid = true;
            else
            {
                args.IsValid = false;

                string sErrorMessage = "Misspelled.";

                txSpell1.CreateSuggestions(args.Value);
                if (txSpell1.Suggestions.Count > 0)
                    sErrorMessage +=  " Do you mean '" + txSpell1.Suggestions[0].Text + "'?";

                CustomValidator1.ErrorMessage = sErrorMessage;
            }
        }
    }
}