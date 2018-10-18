<?php

function generatePage($body, $title="BaseSkeleton") {
    $page = <<<EOPAGE
	<!doctype html>
	<html>
		<head> 
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title>$title</title>
			<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
		</head>
				
		<body>
			<div class="container">
				$body
			</div>
		</body>
	</html>
EOPAGE;

    return $page;
}
?>