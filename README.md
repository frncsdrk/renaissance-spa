# renaissance-spa

[![Test Status](https://github.com/frncsdrk/renaissance-spa/workflows/test/badge.svg?branch)](https://github.com/frncsdrk/renaissance-spa/actions)

renaissance spa (Single Page Application) adapter

## Usage

```js
const { r } = require('renaissance')
const SpaAdapter = require('renaissance-spa')
const adapter = r.registerAdapter('spa', SpaAdapter)

// TODO: Fix usage
adapter.tmpl('foo', 'bar');
console.log(lsa.get('foo'));
```

## API

### adapter.tmpl({string} text, {object} data)

Create a template

## Contributing

See [CONTRIBUTING](https://github.com/frncsdrk/renaissance-spa/blob/master/CONTRIBUTING.md)

## Credits

See [CREDITS](https://github.com/frncsdrk/renaissance-spa/blob/master/CREDITS)

## License

[MIT](https://github.com/frncsdrk/renaissance-spa/blob/master/LICENSE) (c) 2017 - 2021 frncsdrk and contributors
