const fs = require("fs");
const application = fs.readFileSync("./application.yml", "utf8");
const { spawn } = require("child_process");

if (process.env.PORT) {
    application = application.replace("{PORT}", process.env.PORT);
    fs.writeFileSync("./application.yml", application);
};
spawn("java", ["-jar", "Lavalink.jar"])