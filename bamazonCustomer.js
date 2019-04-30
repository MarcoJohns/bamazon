var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "1qaz!QAZ",
    database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    // run the start function after the connection is made to prompt the user
    perchase();


});


// connection.query("SELECT * FROM products", function (err, res) {
//     for (var i = 0; i < res.length; i++) {
//         console.log('id: ' + res[i].id + " | " + res[i].porduct_name + " | " + '$ ' + res[i].price);
//     }
//     console.log("-----------------------------------");
//     perchase();
// })



function perchase() {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log('id: ' + res[i].id + " | " + res[i].porduct_name + " | " + '$ ' + res[i].price);
        }
        console.log("-----------------------------------");
        if (err) throw err;
        inquirer
            .prompt([
                {
                    name: "idNumber",
                    type: "input",
                    message: "Type the id number of the item you would like to purchase."
                },
                {
                    name: "quantity",
                    type: "input",
                    message: "How (many/much) would you like to buy?"
                }
            ])

    });
}

