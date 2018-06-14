var mysql = require("mysql");
var inquirer = require("inquirer");

//Globals
var productData ="";
var productInfo="";
var productId ="";
var productQuantity="";


//creates connection with myqsl
var connection = mysql.createConnection({
    host     : 'localhost',
    port     : 3306,
    user     : 'root',
    password : '',
    database : 'bamazon'
  });

  // connects to mysql
  connection.connect((err) => {
    if (err) {
        throw err;
    }
    console.log("connected to mysql");
  });
  
  function inventory() {
      connection.query("SELECT * FROM products", function(err, data) {
          if (err) throw err;

       for ( var i = 0; i < data.length; i++) {
            productData = data;
            productInfo +=
            '\n `````````````````````````````````````' +
            '\n Item ID#: ' + productData[i].item_id +
            '\n Product Name: ' + productData[i].product_name +
            '\n Product Departemt: '+ productData[i].department_name +
            '\n Price: ' + productData[i].price +
            '\n Available in stock: ' + productData[i].stock_quantity+
            '\n ````````````````````````````````````````````````````\n';
       }
     console.log(productInfo);

        
      });
  };
  