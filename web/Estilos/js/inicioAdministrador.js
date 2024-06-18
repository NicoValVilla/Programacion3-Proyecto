var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio","Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio"],
        datasets: [{
                label: "Numero de ventas en el 2019",
                backgroundColor: '#e84c3d',
                borderColor: '#263238',
                data: [0, 10, 5, 2, 20, 30, 45,50, 10, 5, 2, 20, 30, 45]
            }]
    },
    options: {
        responsive: true,
        legend: {
            labels: {
                fontColor: '#ffffff'
            }
        },
        scales: {
            yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: '#ffffff'
                    }
                }],
            xAxes: [{
                    ticks: {
                        fontColor: '#ffffff'
                    }
                }]
        }
    }
});


var ctx = document.getElementById('myChart2').getContext('2d');
var chart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ["Enero", "Febrero", "Marzo", "Abril"],
        datasets: [{
                label: "Nuevos usuarios año 2019",
                backgroundColor: '#e84c3d',
                data: [12, 5, 18, 2]
            }]
    },
    options: {
        responsive: true,
        legend: {
            labels: {
                fontColor: '#ffffff'
            }
        },
        scales: {
            yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: '#ffffff'
                    }
                }],
            xAxes: [{
                    ticks: {
                        fontColor: '#ffffff'
                    }
                }]
        }
    }
});

