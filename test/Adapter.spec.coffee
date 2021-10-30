test = require("tape")
{ r } = require("renaissance")
Adapter = require("../../dist/Adapter")

test("Adapter can be instantiated", (t) =>
  t.ok(new Adapter())
  t.end()
)

test("Adapter has register method", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.register == "function")
  t.end()
)

test("Adapter has goto method", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.goto == "function")
  t.end()
)

test("Adapter can be registered with renaissance", (t) =>
  t.ok(r.registerAdapter("appendHTML", Adapter))
  t.end()
)
