using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected string PositiveDataJson { get; set; }
        protected string NegativeDataJson { get; set; }
        protected string ChartDataJson { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, List<double>> chartData = new Dictionary<string, List<double>>
    {
        { "EfficientNet-orj", new List<double> { 97.49, 96.87 } },
        { "EfficientNet-ap", new List<double> { 97.36, 97.57 } },
        { "EfficientNet-ns", new List<double> { 96.98, 97.36 } },
        { "EfficientNet-v2", new List<double> { 96.25, 98.87 } },
        { "ResNet50", new List<double> { 93.79, 91.56 } },
        { "EfficicientNet-ap-nish", new List<double> { 97.33, 98.89 } }
    };

            // Convert data to JSON string
            ChartDataJson = Newtonsoft.Json.JsonConvert.SerializeObject(chartData);



        }

    }
    
}