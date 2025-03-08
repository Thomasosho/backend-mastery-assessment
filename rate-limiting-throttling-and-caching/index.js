const express = require("express");
const rateLimit = require("express-rate-limit");
const throttle = require("express-throttle");
const NodeCache = require("node-cache");

const app = express();
const port = 3000;

const cache = new NodeCache({ stdTTL: 10 });

const limiter = rateLimit({
  windowMs: 60 * 1000, // 1 minute
  max: 5, // Limit each IP to 5 requests per windowMs
  message: "Too many requests, please try again later.",
});

const throttler = throttle({
  burst: 1, // Allow 1 request
  rate: "2/s", // Allow 1 request every 2 seconds
});

app.use(limiter);

app.get("/data", throttler, (req, res) => {
  const cacheKey = "cachedData";

  const cachedData = cache.get(cacheKey);
  if (cachedData) {
    console.log("Returning cached data");
    return res.json({ data: cachedData, source: "cache" });
  }

  const newData = { message: "Hello, this is fresh data!" };
  console.log("Fetching fresh data");

  cache.set(cacheKey, newData);

  res.json({ data: newData, source: "fresh" });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
