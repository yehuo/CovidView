var statis_chart_l = echarts.init(document.getElementById('chart-l'));
var statis_chart_r = echarts.init(document.getElementById('chart-r'));

$.post('/dashboard/barChartData', {
	"name": '{{ sd.country }}',
}, ).done(function(data) {
	var option = {
		title: {
			text: '疫情排名前8地区（湖北以外）',
			subtext: '数据来自丁香园',
		},
		tooltip: {
			trigger: 'axis',
			axisPointer: {
				type: 'shadow',
			},
		},
		dataset: data,
		grid: {
			// 表格位置
			left: '3%',
			right: '4%',
			bottom: '3%',
			containLabel: true
		},
		xAxis: {
			type: 'value',
			// 表格中左右留出的宽度
			boundaryGap: [0, 0.01],
		},
		yAxis: {
			type: 'category',
			data: []
		},
		series: [{
				type: 'bar'
			},
			{
				type: 'bar'
			},
			{
				type: 'bar'
			}
		],
	};
	statis_chart_l.setOption(option);
})

$.post('/dashboard/pieChartData', {'name': '{{ sd.country }}'},).done(function(data) {
			statis_chart_r.setOption({
				title: {
					text: '异步数据加载示例'
				},
				tooltip: {},
				legend: {
					data: ['销量']
				},
				xAxis: {
					data: ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"]
				},
				yAxis: {},
				series: [{
					name: '销量',
					type: 'bar',
					data: [5, 20, 36, 10, 10, 20]
				}]
			});
		});
