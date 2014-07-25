<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checklist.aspx.cs" Inherits="WebApplication7.Checklist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<style type="text/css">
		* { margin: 0; outline: none; }
		body { background-color: white; }
		.c { clear: both; }
		h2 { padding: 20px 0 10px 0; font-size: 24px; line-height: 40px; font-weight: normal; color: #adc276; text-shadow: 0 1px 3px #222222; }
	</style>

	<!-- sliderman.js -->
	<script type="text/javascript" src="sliderman.1.3.8.js"></script>
	<link rel="stylesheet" type="text/css" href="sliderman.css" />
	<!-- /sliderman.js -->
</head>
<body>

	<div id="SliderName_2" class="SliderName_2">
		<img src="img/1.jpg" width="350" height="225" alt="Demo2 first" title="Demo2 first" usemap="#img1map" />
		<map name="img1map">
			<area href="#img1map-area1" shape="rect" coords="100,100,200,200" />
			<area href="#img1map-area2" shape="rect" coords="300,100,400,200" />
		</map>
		<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
		<img src="img/2.jpg" width="350" height="225" alt="Demo2 second" title="Demo2 second" />
		<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
		<img src="img/3.jpg" width="350" height="225" alt="Demo2 third" title="Demo2 third" />
		<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
		<img src="img/4.jpg" width="350" height="225" alt="Demo2 fourth" title="Demo2 fourth" />
		<div class="SliderName_2Description">Featured model: <strong>Charlize Theron</strong></div>
	</div>
	<div class="c"></div>
	<div id="SliderNameNavigation_2"></div>
	<div class="c"></div>

    <script type="text/javascript">
        effectsDemo2 = 'rain,stairs,fade';
        var demoSlider_2 = Sliderman.slider({
            container: 'SliderName_2', width: 350, height: 225, effects: effectsDemo2,
            display: {
                autoplay: 5000,
                loading: { background: '#000000', opacity: 0.5, image: 'img/loading.gif' },
                buttons: { hide: true, opacity: 1, prev: { className: 'SliderNamePrev_2', label: '' }, next: { className: 'SliderNameNext_2', label: '' } },
                description: { hide: true, background: '#000000', opacity: 0.4, height: 50, position: 'bottom' },
                navigation: { container: 'SliderNameNavigation_2' }
            }
        });
    </script>


</body>
</html>