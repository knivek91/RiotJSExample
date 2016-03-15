var express = require('express');
var app		= express();

app.configure('dev', function() {
    app.use(express.errorHandler({
        dumpExceptions: true,
        showStack: true
    }));
});

//ruteo 
app.get('/',function(req, resp) {
	resp.sendFile(__dirname + '/login.html');
});

app.get('/home',function(req, resp) {
	resp.sendFile(__dirname + '/index.html');
});

//escuchar
app.listen(9090);