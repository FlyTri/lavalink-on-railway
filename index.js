const fs = require("fs");
const application = fs.readFileSync("./application.yml", "utf8");
const { spawn } = require("child_process");

if (process.env.PORT) fs.writeFileSync("./application.yml", fs.readFileSync("./application.yml", "utf8").replace("{PORT}", process.env.PORT));
spawn("java", ["-jar", "./Lavalink.jar"], { stdio: "inherit" });