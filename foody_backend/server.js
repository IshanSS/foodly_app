const express = require("express");
const app = express();
const dotenv = require("dotenv");
const mongoose = require("mongoose");
const CategoryRoute = require("./routes/category");

dotenv.config();

mongoose
  .connect(process.env.DB_URL)
  .then(() => {
    console.log("Foodly Database Connected");
  })
  .catch((err) => {
    console.log(err);
  });

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/api/category", CategoryRoute);

app.listen(process.env.PORT, () =>
  console.log(`Foodly Backend is running on ${process.env.PORT}`)
);
