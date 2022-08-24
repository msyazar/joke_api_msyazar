const express = require('express');
const app = express();
app.use(express.json());


//READ Request Handlers
app.get('/', (req, res) => {
res.send('Welcome REST API with Node.js !!');
const http = require('http');
const fs = require('fs');
const convert = require('array-to-json');

const file = fs.createWriteStream("joke.txt");
const request = http.get("http://bash.org.pl/text", function(response) {
  response.pipe(file);
});


file.on("finish", () => {
       file.close();
       console.log("Download Completed");
   });
});
app.get('/api/jokes', (req,res)=> {

const fs = require('fs');
const convert = require('array-to-json');
var data = fs.readFileSync("joke.txt");
var dataArr = data.toString('utf8').split('\n%\n');

const items = dataArr.slice(0, 100)

const json = convert.arrayToJson(items);
res.send(json);
});


function validateJoke(joke) {
const schema = {
title: Joi.string().min(3).required()
};
return Joi.validate(joke, schema);

}

//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8081;
app.listen(port, () => console.log(`Listening on port ${port}..`));
