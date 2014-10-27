<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link href='http://fonts.googleapis.com/css?family=Share+Tech+Mono' rel='stylesheet' type='text/css'>



<script src="http://code.jquery.com/jquery-1.8.3.js" type="text/javascript"></script>



<script type="text/javascript">// <![CDATA[

$(function(){
Highcharts.setOptions({
    chart: {
        backgroundColor: '#FFFFFF',
        shadow: false
    }
});
$('#containerStacked').highcharts({
    
    chart: {
        type: 'area',
        zoomType: 'x'
    },
    data: {
        googleSpreadsheetKey: '16G_LhufH1QjRiFn_9b0MnGiOF7ze5yJTiXRh85k5guc'
    },
    plotOptions: {
        series: {
            visible: false
        },
        area: {
                    stacking: 'normal',
                    //stacking: 'percent',
                    lineColor: '#ffffff',
                    lineWidth: 1,
                    marker: {
                        lineWidth: 1,
                        lineColor: '#ffffff'
                    }
                }
    },
    
    title: {
        text: 'Actuals Production - stacked chart'
    },
    tooltip: {
                                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b></b> {point.y:,.0f} dp<br/>',
                                shared: true
            },
}, function(chart) {
     chart.series[2].show();   
});
});
// ]]></script>



<script src="http://code.highcharts.com/highcharts.js" type="text/javascript"></script>
<script src="http://code.highcharts.com/modules/data.src.js" type="text/javascript"></script>


</head>




<body>
    <header>
        <a href="index.html"><img id="logo" src="http://37.media.tumblr.com/24f0e395b240e6096ee6201d967c7683/tumblr_nalidtBigN1ql5lu5o1_1280.png"/></a>
        <p>And here's live production for my Team made with highcharts. Click and drag on the timeline to zoom in.</p>
        <a href="index.html">Back to pictures</a>
        <a href="production.asp">Line chart</a>
        <a href="area_chart.asp">Area chart</a>
    </header>

       
    <div id="containerStacked"></div>
    
    
</body>

</html>