const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => { //res making a request of the server 
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, badCellDesc FROM tbl_infograph"; //change if needed!!!!!!

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        // console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('main', { data: result }); //data (food) is just a generic key can be anything
        // { data: result });
    })
})

router.get('/users/:id', (req, res) => { //( id ) can be named whatever you want
console.log('hit a dynamic route!');
console.log(req.params.id); // 1, 2 3 or wahtever you want to come after the slash


















//added another query
// let query = `SELECT * FROM tbl_infograph WHERE ID="${req.params.id}"`; //change if needed!!!!!!!!!

//     sql.query(query, (err, result) => {
//         if (err) { throw err; console.log(err); }

//         console.log(result); // should see objects wrapped in an array


//         //turn our social property into an array - its just text in the DB
//         //which isnt realy anything we can work with

//         result[0].cooktime = result[0].cooktime.split(",").map(function(item){ //change if needed!!!
//             item = item.trim(); //remove the extra spaces from each word

//             return item;
//         })

//             //console.log('after split ', result[0]);
//         // send the  DB query back to the browser
//         res.json(result);


//         // render the home view with dynamic data
//         // res.render('home', { people: result }); //data (people) is just a generic key can be anything
//         // { data: result });
//     })
})
module.exports = router;