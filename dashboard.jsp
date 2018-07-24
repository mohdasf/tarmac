<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

 <template:page pageTitle="${pageTitle}">
    <cms:pageSlot position="Section1" var="feature">
        <cms:component component="${feature}" />
    </cms:pageSlot> 

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.highcharts.com/highcharts.js"></script>
  <script src="https://code.highcharts.com/modules/exporting.js"></script>
  <script src="https://code.highcharts.com/modules/export-data.js"></script>
</head>

<style>



h3 {
  margin-top: 0;
}

.badge {
  background-color: #777;
}

/* .tabs-left { margin-top: 3rem; } */

.tarmacdashboard.nav-tabs {
    float: left;
    border-bottom: 0;
    width: 200px;
}

.tarmacdashboard.nav-tabs li {
    float: none;
    margin: 0;
    background-color: #007cbf;
    color: #fff;
                height: 70px
}

.tarmacdashboard.nav-tabs li a {
    margin-right: 0;
    border-radius: 0;
    color: #fff;
    border: none;
}

.tarmacdashboard.nav-tabs li a:hover {
    background-color: #007cbf;
    color: #fff
}
.tarmacdboard .glyphicon {
                color: #fff;
                padding: 0 10px;
}
.tarmacdboard .active .glyphicon {
    color: #007cbf;
}

.tarmacdashboard.nav-tabs>li.active>a, .tarmacdashboard.nav-tabs>li.active>a:hover, .tarmacdashboard.nav-tabs>li.active>a:focus {
    border:0;
    color: #007cbf;
}

.tarmacdashboard.nav-tabs>li.active>a:active{
    background: #fff;
                height: 70px;
}
.tarmacdashboard.nav-tabs>li>a {
    line-height: 50px;
                padding-left:10px
}


.tarmacv-tab-content {
    margin-left: 45px;

}
.tab-pane {
    display: none;
    background-color: #fff;
    padding: 1.6rem;
    overflow-y: auto;
    padding-top: 0;
}
.tarmacv-tab-content .active { display: block; }

.tarmacdashboard.nav-tabs>li.active>a:hover{
    background: #fff;
    color:#007cbf
}

.list-group {
  width: 100%;
}

.list-group .list-group-item {
    height: 50px;
}

.list-group  h4, span {
line-height: 11px;
}

.dashboard-head {
    background: #007cbf;
    color: #fff;
    height: 40px;
}


.dashboard-head h3{
    font-size: 18px;
    padding: 12px;
}


.dashboard-wrapper {
    min-height: 300px;
    border: 1px solid #fff;
}

.dashboard-content table {
    border-style: solid;
    border-width: 2px;
    margin: 20px 0;
    border-color: #eee;
    width: 90%;
    margin-left: 20px;
}

.margtop10{
                margin-top: 50px
}


<!-- /*high chart styles*/ -->





<!-- High chart style ends  -->

.highcharts-exporting-group {
    display: none;
}

.dashboard-content h3 {
    padding-top: 10px;
    margin-left: 20px;
    color: #007cbf;
    font-size: 18px;
    font-weight: bold;
}

.dashboard-wrapper {
    min-height: 300px;
    border-style: solid;
    border-width: 1px;
                border-color: #007cbf;
                width: 442px;
                margin-top: 20px;
                height: 450px
}


.control-panel span.glyphicon {
font-size: 48px;
}

.controltext{
                position: relative;
                bottom: 15px;
                font-size: 24px;
                left: 10px;
                color: #000;
                cursor: pointer
}
::-webkit-scrollbar {
    width: 10px;
}

/* Track */


/* Handle */
<!-- ::-webkit-scrollbar-thumb {
    background: #007cbf; 
} -->

::-webkit-scrollbar-track{
                background: #eee; 
                 height: 10px
}

</style>

<script>

$(document).ready(function(){

 /*  var tabsFn = (function() {
  function init() {
    setHeight();
  }
function setHeight() {
    var $tabPane = $('.tab-pane'),
    tabsHeight = $('.tarmacdashboard.nav-tabs').height();
   $tabPane.css({
      height: tabsHeight
});
}
$(init);
} )();*/

Highcharts.theme = {
    colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', 
             '#FF9655', '#FFF263', '#6AF9C4'],
    chart: {
        backgroundColor: {
            linearGradient: [0, 0, 500, 500],
            stops: [
                [0, 'rgb(255, 255, 255)'],
                [1, 'rgb(240, 240, 255)']
            ]
        },
    },
    title: {
        style: {
            color: '#000',
            font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
        }
    },
    subtitle: {
        style: {
            color: '#666666',
            font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
        }
    },

    legend: {
        itemStyle: {
            font: '9pt Trebuchet MS, Verdana, sans-serif',
            color: 'black'
        },
        itemHoverStyle:{
            color: 'gray'
        }   
    }
};

// Apply the theme
Highcharts.setOptions(Highcharts.theme);


Highcharts.chart('container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'Activity for this Month - july,2018'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
},
plotOptions: {
    pie: {
      allowPointSelect: true,
      cursor: 'pointer',
      dataLabels: {
        enabled: true,
        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
        style: {
          color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
        }
    },
    //showInLegend: true
  },
},
exporting: { enabled: false },
series: [{
    name: 'Brands',
    colorByPoint: true,
    data: [{
     name: 'Order',
      y: 61.41,
      sliced: true,
     selected: true
    }, {
     name: 'Quote',
      y: 11.84
    }, {
    name: 'Ticket',
      y: 10.85
    }]
  }]
});



Highcharts.chart('container-credit', {
    chart: {
        type: 'pie',
        options3d: {
            enabled: true,
            alpha: 45
        }
    },
    title: {
        text: ''
    },
    subtitle: {
        text: ''
    },
    plotOptions: {
        pie: {
            innerSize: 50,
            depth: 45,
dataLabels: {
enabled: false,
},
showInLegend: true
        },
    },
exporting: { enabled: false },
    series: [{
        name: 'Delivered amount',
        data: [
            ['$765456 credit available', 8],
            ['$876589 used Credits', 3],
            ['$876589 Pending Orders', 1]
        ]
    }]
});

})

</script>

<body>



<div class="container tarmacdboard">
  <div class="row">
    <div class="col-md-12 col-sm-5">
      <div class="tabs-left">
                                <ul class="nav tarmacdashboard nav-tabs">
                                                <li class="active"><a href="#b" data-toggle="tab"><span class="glyphicon glyphicon-dashboard"></span>Dashboard</a></li>
                                                <li><a href="#c" data-toggle="tab"><span class="glyphicon glyphicon-headphones"></span>Control Center</a></li>
                                                <li><a href="/icommercestorefront/my-account/my-quotes/" data-toggle="tab"><span class="glyphicon glyphicon-open"></span>Quote</a></li>
                                                <li><a href="/icommercestorefront/my-account/orders/"  data-toggle="tab"><span class="glyphicon glyphicon-shopping-cart"></span>Orders</a></li>
                                                <li><a href="#f" data-toggle="tab"><span class="glyphicon glyphicon-cog"></span>Invoices</a></li>
                                                <li><a href="#g" data-toggle="tab"><span class="glyphicon glyphicon-list-alt"></span>Reports</a></li>
                                                <li><a href="#h" data-toggle="tab"><span class="glyphicon glyphicon-check"></span>Track</a></li>
                                                <li><a href="#i" data-toggle="tab"><span class="glyphicon glyphicon-record"></span>POD</a></li>
                                </ul>
                                <div class="tarmacv-tab-content">
                                                <div class="tab-pane  active" id="b" >
                                                                
                                                                                <div class="row">
                                                                                <div class="col-md-6">
                                                                                                <div class="dashboard-wrapper">
                                                                                                                <div class="dashboard-head">
                                                                                                                                <h3>360 Degree View</h3>
                                                                                                                </div>
                                                                                                                <div class="dashboard-content">
                                                                                                                                <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                                                                                                                </div>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                                <div class="dashboard-wrapper">
                                                                                                <div class="dashboard-head">
                                                                                                <h3>Credit Limit</h3>
                                                                                                </div>
                                                                                                <div class="dashboard-content">
                                                                                                <div id="container-credit" style="height: 400px"></div>
                                                                                                </div>
                                                                                                </div>
                                                                                </div>
                                                                </div>

                                                                <div class="row">
                                                                                <div class="col-md-6">
                                                                                                <div class="dashboard-wrapper">
                                                                                                                <div class="dashboard-head">
                                                                                                                <h3>Recent Transactions</h3>
                                                                                                                </div>
                                                                                                                <div class="dashboard-content">
                                                                                                                                <h3>Transaction List</h3>
                                                                                                                                                <table class="table table-striped">
                                                                                                                                                <thead>
                                                                                                                                                  <tr>
                                                                                                                                                <th>No</th>
                                                                                                                                                <th>Description</th>
                                                                                                                                                <th>Value</th>
                                                                                                                                                  </tr>
                                                                                                                                                </thead>
                                                                                                                                                <tbody>
                                                                                                                                                  <tr>
                                                                                                                                                <td><a href="#">56478881</a></td>
                                                                                                                                                <td><a href="#">Quote1</a></td>
                                                                                                                                                <td><a href="#">$999</a></td>
                                                                                                                                                  </tr>
                                                                                                                                                   <tr>
                                                                                                                                                <td><a href="#">123459765</a></td>
                                                                                                                                                <td><a href="#">Quote2</a></td>
                                                                                                                                                <td><a href="#">$8888</a></td>
                                                                                                                                                  </tr>
                                                                                                                                                   <tr>
                                                                                                                                                <td><a href="#">98762345</a></td>
                                                                                                                                                <td><a href="#">Quote3</a></td>
                                                                                                                                                <td><a href="#">$999</a></td>
                                                                                                                                                  </tr>
                                                                                                                                                   <tr>
                                                                                                                                                <td><a href="#">76541209</a></td>
                                                                                                                                                <td><a href="#">Order1</a></td>
                                                                                                                                                <td><a href="#">$9191</a></td>
                                                                                                                                                  </tr>
                                                                                                                                                   <tr>
                                                                                                                                                <td><a href="#">87631209</a></td>
                                                                                                                                                <td><a href="#">Order2</a></td>
                                                                                                                                                <td><a href="#">$6756</a></td>
                                                                                                                                                  </tr>
                                                                                                                                                </tbody>
                                                                                                                                                </table>
                                                                                                                </div>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                                <div class="dashboard-wrapper">
                                                                                                                <div class="dashboard-head">
                                                                                                                                <h3>My Payment History</h3>
                                                                                                                </div>
                                                                                                <div class="dashboard-content"></div>
                                                                                                </div>
                                                                                </div>
                                                                </div>
                                                                
                                                </div>
                                                <div class="tab-pane" id="c">
                                                              
                                                                <div class="row">
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a href="/tarmacstorefront/my-account/my-quotes/"><span class="glyphicon glyphicon-open"></span><span class="controltext">Quote</span></a>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a href="/tarmacstorefront/my-account/orders/"><span class="glyphicon glyphicon-shopping-cart"></span><span class="controltext">Order</span></a>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a><span class="glyphicon glyphicon-cog"></span><span class="controltext">Invoice</span></a>
                                                                                                </div>
                                                                                </div>
                                                                </div>
                                                                <div class="row margtop10">
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a><span class="glyphicon glyphicon-check"></span><span class="controltext">Tracks</span></a>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a><span class="glyphicon glyphicon-list-alt"></span><span class="controltext">Reports</span></a>
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                <div class=" control-panel">
                                                                                <a><span class="glyphicon glyphicon-user"></span><span class="controltext">User Management</span></a>
                                                                                </div>
                                                                                </div>
                                                                </div>
                                                                <div class="row margtop10">
                                                                                <div class="col-md-4">
                                                                                                <div class=" control-panel">
                                                                                                                <a><span class="glyphicon glyphicon-question-sign"></span><span class="controltext">FAQ</span></a>
                                                                                                </div>
                                                                                </div>
                                                                </div>
                                                </div>
                                                <div class="tab-pane" id="d">
                                                                Quote
                                                </div>
                                                <div class="tab-pane" id="e">Orders</div>
                                                <div class="tab-pane" id="f">Invoices</div>
                                                <div class="tab-pane" id="g">Reports</div>
                                                <div class="tab-pane" id="h">Track</div>
                                                <div class="tab-pane" id="i">POD</div>
                                </div><!-- /tab-content -->

       </div><!-- /tabbable -->

    </div><!-- /col -->

  </div><!-- /row -->

</div><!-- /container -->



</body>









    
</template:page> 