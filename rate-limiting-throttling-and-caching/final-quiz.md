# Final Quiz

## 1. What is the difference between rate limiting and throttling?

- **Rate Limiting:** 
  - It sets a maximum number of requests a user can make in a specific time period.
  - Example: "You can only make 10 requests per minute."

- **Throttling:** 
  - It slows down the rate at which requests are processed.
  - Example: "You can make requests, but only 1 request every 5 seconds."

---

## 2. How does caching improve API performance?

- Caching stores a copy of the API response.
- When the same request is made again, the API can quickly return the cached response instead of processing the request from scratch.
- This makes the API faster and reduces the load on the server.

---

## 3. What is the advantage of token bucket vs. leaky bucket algorithms?

- **Token Bucket:**
  - Allows for bursts of requests as long as tokens are available.
  - Example: You have a bucket of tokens. Each request uses a token. If the bucket is empty, you wait for new tokens to be added over time.

- **Leaky Bucket:**
  - Ensures a steady flow of requests by processing them at a fixed rate.
  - Example: Requests are like water poured into a bucket with a small hole. If too much water is added, it overflows (requests are dropped or delayed).

---
- **Console Log from the project:**
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
{"data":{"message":"Hello, this is fresh data!"},"source":"fresh"}%                      
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
{"data":{"message":"Hello, this is fresh data!"},"source":"cache"}%                      
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
{"data":{"message":"Hello, this is fresh data!"},"source":"cache"}%                      
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
{"data":{"message":"Hello, this is fresh data!"},"source":"cache"}%                      
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
{"data":{"message":"Hello, this is fresh data!"},"source":"cache"}%                      
oshiomogwemeh@MacBook-Pro-110 backend-mastery-assessment % curl http://localhost:3000/data
Too many requests, please try again later.%  