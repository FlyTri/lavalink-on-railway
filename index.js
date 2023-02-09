const fs = require("fs");
const application = fs.readFileSync("./application.yml", "utf8");

if (process.env.PORT) fs.writeFileSync("./application.yml", application.replace("{PORT}", process.env.PORT));