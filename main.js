const app = require("express")();
app.get("/", (req, res) => res.send("wow"));
app.listen(process.env.OPTIC_API_PORT || 4000);
