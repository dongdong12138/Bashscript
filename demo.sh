if [ -d $1 ]; then
	echo 'dir exist'
	exit
else 
	mkdir $1
	cd $1
	mkdir css js
	echo '  <!DOCTYPE html>
		<head>
			<meta charset="utf-8"/>
			<link rel="stylesheet" href="css/style.css">
    			<script src="js/main.js"></script>
			<title>Hello</title>
		</head>
 		<body>
			<h1>Hi</h1>
		</body>' > index.html
	echo 'h1{color: red;}' > css/style.css
	echo 'var string = "Hello World"
      	alert(string)' > js/main.js
	echo 'success'
	exit
fi