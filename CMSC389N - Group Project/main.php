<?php
	require_once("baseSkeleton.php");
	
	$message = "";
	
	// Group Project Application System
	$page = <<<EOBODY
	<!-- 1st page; Login Page -->
	<form action="{$_SERVER["PHP_SELF"]}" method="post">
		<p>
			<h1>Application System</h1>
		</p>
		<p>
			<strong>Username:</strong>
			<input type="text" name="user" class="form-control" required />
		</p>
		<p>
			<strong>Password:</strong>
			<input type="password" name="pwd" class="form-control" required />
		</p>
		<p>
			<input type="submit" name="submit" class="btn btn-outline-primary btn-block" />
		</p>
	</form>
EOBODY;

	// After submitting
	if (isset($_POST["submit"])) {
		// Start of session after logging in
		session_start();
		// Resets the sessions (ex: when user needs to re-login after closing browser)
		$_SESSION = array();
		if (!isset($_SESSION["count"])) {
			$_SESSION["count"] = 0;
		}
		
		// Removing any leading or trailing spaces from login field
		$login = trim($_POST["user"]);
		$pwd = $_POST["pwd"];
		
		// Unsuccessful attempts
		if ($login === "" || $login !== "testudo") {
			$message .= "<h5>Invalid login information provided.</h5>";
		}
		else if ($pwd === "" || $pwd !== "terps") {
			$message .= "<h5>Invalid password value provided.</h5>";
		}
		// After successful login
		else if ($login === "testudo" && $pwd === "terps") {
			// Redirect to [file.php] file
			header('Location: ');
		}
	}
	
	// Generate display
	$body = $page.$message;
	echo generatePage($body);
?>