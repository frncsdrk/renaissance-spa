test = require("tape")
{ r } = require("renaissance")
Adapter = require("../../dist/Adapter")

test("Adapter can be instantiated", (t) =>
  t.ok(new Adapter())
  t.end()
)

test("Adapter has pages property", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.pages == "object")
  t.end()
)

test("Adapter has meta property", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.meta == "object")
  t.end()
)

test("Adapter has _getNodes method", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter._getNodes == "function")
  t.end()
)

test("Adapter has register method", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.register == "function")
  t.end()
)

test("Adapter can register page", (t) =>
  adapter = new Adapter()
  adapter.register('page', '#page')
  t.equals(adapter.pages['page'], '#page')
  t.end()
)

test("Adapter has goto method", (t) =>
  adapter = new Adapter()
  t.ok(typeof adapter.goto == "function")
  t.end()
)

# NOTE: Needs document mock
# test("Adapter can call goto method", (t) =>
#   adapter = new Adapter()
#   t.ok(adapter.goto('page'))
#   t.end()
# )

test("Adapter can be registered with renaissance", (t) =>
  t.ok(r.registerAdapter("appendHTML", Adapter))
  t.end()
)
