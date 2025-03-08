# Final Quiz

---

## 1. What’s the difference between OAuth 2.0 and JWT?

- **OAuth 2.0:**
  - A framework for authorization that allows third-party applications to access user data without exposing their credentials.
  - Focuses on granting access to resources (e.g., "Can this app access my Google photos?").
  - Uses access tokens (which can be JWTs) to grant access.

- **JWT (JSON Web Token):**
  - A compact, self-contained token format used to securely transmit information between parties.
  - Contains claims (e.g., user ID, roles) and is signed to ensure integrity.
  - Often used as part of OAuth 2.0 to represent access tokens or ID tokens.

**Key Difference:**  
OAuth 2.0 is an authorization framework, while JWT is a token format. OAuth 2.0 can use JWTs as tokens, but JWTs can also be used independently for authentication or information exchange.

---

## 2. Which OAuth grant type is most secure for web applications?

- **Authorization Code Grant** is the most secure OAuth grant type for web applications.
  - Why it’s secure:
    - The client (web app) never sees the user’s credentials.
    - It uses a two-step process:
      1. The user authorizes the app and receives an authorization code.
      2. The app exchanges the code for an access token on the server-side.
    - This prevents exposure of tokens to the browser or malicious actors.

---

## 3. How does a JWT prevent token tampering?

- JWTs are **signed** using a secret key (HMAC) or a public/private key pair (RSA or ECDSA).
- The signature ensures:
  - **Integrity:** If someone tampers with the token (e.g., changes the claims), the signature becomes invalid.
  - **Authenticity:** The token can be verified as coming from a trusted source.
- When a JWT is received, the server verifies the signature to ensure the token hasn’t been altered.

---

# Summary

- OAuth 2.0 is for authorization, while JWT is a token format.
- The **Authorization Code Grant** is the most secure OAuth grant type for web apps.
- JWTs prevent tampering through cryptographic signatures.

---

# Console

- curl -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" http://localhost:3000/protected
{"message":"Invalid token."}% 