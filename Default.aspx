<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bar-data</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="myChart" width="400" height="400"></canvas>

    <script>
        var chartData = <%= ChartDataJson %>;
        var labels = Object.keys(chartData);
        var positiveData = labels.map(function (label) { return chartData[label][0]; });
        var negativeData = labels.map(function (label) { return chartData[label][1]; });

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Positive',
                    data: positiveData,
                    backgroundColor: 'red',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }, {
                    label: 'Negative',
                    data: negativeData,
                    backgroundColor: 'green',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: false,
                        min: 90,
                        max: 100
                    }
                },
                plugins: {
                    legend: {
                        labels: {
                            fontSize: 10
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>