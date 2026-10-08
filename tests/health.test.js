const test = require("node:test");
const assert = require("node:assert");
const app = require("../app/server");

test("application exposes an Express app", () => {
  assert.ok(app);
  assert.strictEqual(typeof app.listen, "function");
});
