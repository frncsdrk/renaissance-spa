# spa adapter

class SpaAdapter
  constructor: () ->
    this.pages = {};
    this.meta =
      'containerSelector': '.spa-container'
    this

  ###
  register a spa container
  @param {string} name
  @param {string} slctr
  @returns {*}
  ###
  register: (name, slctr) ->
    this.pages[name] = slctr

  ###
  go to given page
  @param {string} name
  @returns {*}
  ###
  # TODO: Needs renaissance utils plugin as module dependency
  goto: (name) ->
    spaContainers = renaissance.utils.getNodes(meta.containerSelector)
    container = renaissance.utils.getNodes(this.pages[name])[0]

    spaContainers.forEach((el, idx) ->
      cont = spaContainers[idx]
      cont.style.display = 'none'
    )

    container.style.display = 'block'

module.exports = SpaAdapter
