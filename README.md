# renaissance-spa

[![Test Status](https://github.com/frncsdrk/renaissance-spa/workflows/test/badge.svg?branch)](https://github.com/frncsdrk/renaissance-spa/actions)

renaissance spa (Single Page Application) adapter

## Usage

```js
const { r } = require('renaissance')
const SpaAdapter = require('renaissance-spa')
const adapter = r.registerAdapter('spa', SpaAdapter)

adapter.register('foo', '#bar')
adapter.goto('foo')
```

## API

### adapter.register({string} name, {string} selector)

Register a SPA container

### adapter.goto({string} name)

Go to registered page with specified name

## Contributing

See [CONTRIBUTING](https://github.com/frncsdrk/renaissance-spa/blob/master/CONTRIBUTING.md)

## Credits

See [CREDITS](https://github.com/frncsdrk/renaissance-spa/blob/master/CREDITS)

## License

[MIT](https://github.com/frncsdrk/renaissance-spa/blob/master/LICENSE) (c) 2017 - 2023 frncsdrk and contributors
