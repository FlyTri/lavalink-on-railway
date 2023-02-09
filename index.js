const fs = require("fs");
if (process.env.PORT) fs.writeFileSync("./application.yml", fs.readFileSync("./application.yml", "utf8").replace("{PORT}", process.env.PORT));