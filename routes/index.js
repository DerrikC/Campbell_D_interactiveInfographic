const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => { //res making a request of the server 
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, discoverer, genetics, mosquitoes, stat1, statDesc, stat2, stat2Desc, stat3, stat3Desc, stat4, stat4Desc FROM tbl_sidefacts"; //change if needed!!!!!!

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
let query = `SELECT * FROM tbl_genes WHERE ID="${req.params.id}"`; //change if needed!!!!!!!!!

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array


 
        res.json(result);


     
    })
})
module.exports = router;