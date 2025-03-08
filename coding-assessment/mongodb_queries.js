const { MongoClient } = require("mongodb");
const uri = "mongodb://localhost:27017";
const client = new MongoClient(uri);

async function run() {
  try {
    await client.connect();
    const database = client.db("userManagement");
    const users = database.collection("users");

    await users.createIndex({ email: 1 });

    await users.insertOne({
      name: "Alice",
      email: "alice@example.com",
      age: 30,
    });

    const user = await users.findOne({ email: "alice@example.com" });
    console.log("Found user:", user);

    await users.updateOne(
      { email: "alice@example.com" },
      { $set: { age: 31 } }
    );
    console.log("User updated");

    await users.deleteOne({ email: "alice@example.com" });
    console.log("User deleted");
  } finally {
    await client.close();
  }
}

run().catch(console.dir);
