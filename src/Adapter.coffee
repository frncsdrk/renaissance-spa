# spa adapter

class SpaAdapter
  constructor: () ->
    this.pages = {};
    this.meta =
      'containerSelector': '.spa-container'
    this

  ###
  Get nodes by selector
  @param {string} selector
  @returns {object} NodeList
  ###
  # TODO: Should be moved to general utils module
  _getNodes: (selector) ->
    # try to use query selector all on slctr with attribute
    if selector.match(/^.+\[.+\]$/)
      return document.querySelectorAll(slctr)

    # default - use standard selector statements
    # node
    if typeof selector == 'object'
      return [selector]
    # id
    else if selector.charAt(0) == '#'
      selector = selector.substring(1)
      return [document.getElementById(selector)]
    # class
    else if selector.charAt(0) == '.'
      selector = selector.substring(1)
      return document.getElementsByClassName(selector)
    # tag
    else if typeof selector == 'string'
      return document.getElementsByTagName(selector)

  ###
  Register a spa container
  @param {string} name
  @param {string} slctr
  @returns {*}
  ###
  register: (name, slctr) ->
    this.pages[name] = slctr

  ###
  Go to given page
  @param {string} name
  @returns {*}
  ###
  goto: (name) ->
    spaContainers = this._getNodes(meta.containerSelector)
    container = this._getNodes(this.pages[name])[0]

    spaContainers.forEach((el, idx) ->
      cont = spaContainers[idx]
      cont.style.display = 'none'
    )

    container.style.display = 'block'

module.exports = SpaAdapter
