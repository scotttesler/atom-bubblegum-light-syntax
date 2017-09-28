
# Tone

fs = require 'fs'
chroma = require 'chroma-js'

# Variables
root = document.documentElement
syntaxVariablesPath = "#{__dirname}/../styles/syntax-variables.less"
writeSyntaxVariablesTimeout = null

# Colors
uno1 = ''
uno2 = ''
duo1 = ''
duo2 = ''
tri1 = ''
tri2 = ''
bg1 = ''
bg2 = ''
bg3 = ''
fg1 = ''
fg2 = ''

module.exports =
  activate: (state) ->
    uno1 = '#575dff'
    duo1 = '#9717bc'
    tri1 = '#cb4f94'
    bg1  = '#ebe5ef'

    setColors()

  deactivate: ->
    unsetColors()

# Set Colors -----------------------

setColors = ->

  # Create all different shades

  # uno1                              # <- set by user
  uno2 = chroma.mix(uno1, bg1, .5)   # how much bg

  # duo1                              # <- set by user
  duo2 = chroma.mix(duo1, bg1, .5)   # how much bg

  # tri1                              # <- set by user
  tri2 = chroma.mix(tri1, bg1, .5)   # how much bg

  # bg1                               # <- set by user
  bg2 = chroma.mix(bg1, uno1, .04)   # how much uno
  bg3 = chroma.mix(bg1, uno1, .12)   # how much uno

  fg1 = chroma.mix(bg1, uno1, .3)    # how much uno
  fg2 = chroma.mix(bg1, uno1, .1)    # how much uno


  # Remove all properties
  # Prevents adding endless properties
  unsetColors()

  # Update custom properties
  root.style.setProperty('--uno-1', uno1)
  root.style.setProperty('--uno-2', uno2)

  root.style.setProperty('--duo-1', duo1)
  root.style.setProperty('--duo-2', duo2)

  root.style.setProperty('--tri-1', tri1)
  root.style.setProperty('--tri-2', tri2)

  root.style.setProperty('--bg-1', bg1)
  root.style.setProperty('--bg-2', bg2)
  root.style.setProperty('--bg-3', bg3)

  root.style.setProperty('--fg-1', fg1)
  root.style.setProperty('--fg-2', fg2)

  root.style.setProperty('--accent', tri1)



# Unset Colors -----------------------

unsetColors = ->
  # Remove all properties (e.g. when switching to another theme)
  root.style.removeProperty('--uno-1')
  root.style.removeProperty('--uno-2')

  root.style.removeProperty('--duo-1')
  root.style.removeProperty('--duo-2')

  root.style.removeProperty('--tri-1')
  root.style.removeProperty('--tri-2')

  root.style.removeProperty('--bg-1')
  root.style.removeProperty('--bg-2')
  root.style.removeProperty('--bg-3')

  root.style.removeProperty('--fg-1')
  root.style.removeProperty('--fg-2')

  root.style.removeProperty('--accent')
