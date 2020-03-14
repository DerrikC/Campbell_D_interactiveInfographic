const express = require('express');
const path = require('path');
const hbs = require('hbs');


//fix heroku crashing
const sql = require('./utils/sql');

// set the port
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));//looks for assets in public folder
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index')); //change for custom 404 error message
//only change made above

app.use((req, res, next) => {         //add for custom 404 error message
    var err = new Error ('Not Found');
    err.status = 404;
    err.customMessage = "Oh no, somethin' broke!"

    next(err);
})

app.use((err, req, res, next) => {            //add for custom 404 error message
    res.render('error', {data: err, layout: 'errorPage'});
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})

