#= require alchemy/alchemy.base
#= require alchemy/alchemy.datepicker
#= require alchemy/alchemy.buttons
#= require alchemy/alchemy.hotkeys
#= require alchemy/alchemy.list_filter
#= require alchemy/alchemy.spinner
#= require alchemy/alchemy.autocomplete
#
window.Alchemy = {} if window.Alchemy == undefined

# Alchemy GUI initializers
Alchemy.GUI =

  # Initializes all Alchemy GUI elements in given scope
  init: (scope) ->
    Alchemy.SelectBox(scope)
    Alchemy.Datepicker(scope)
    Alchemy.Buttons.observe(scope)
    Alchemy.watchForDialogs(scope)
    Alchemy.Hotkeys(scope)
    Alchemy.ListFilter(scope)
    Alchemy.Spinner.watch(scope)
    Alchemy.Autocomplete.tags(scope)

  initElement: ($el) ->
    Alchemy.ElementDirtyObserver($el)
    Alchemy.GUI.init($el)
    Alchemy.ImageLoader($el)
    Alchemy.Spinner.watch($el)
