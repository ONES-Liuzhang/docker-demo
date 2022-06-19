const express = require("express");
const app = express();
const http = require("http")

app.use("/", (req, res) => {
    res.send("Hello World!");
})

http.createServer(app);

app.listen(8088, () => {
    console.log("Docker Server is running on port 8088");
})