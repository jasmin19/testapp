animate = ->
  requestAnimFrame animate
  bunny.rotation += 0.1

  # render the stage
  renderer.render stage
  return

stage = new PIXI.Stage(0x66ff99)
renderer = PIXI.autoDetectRenderer(400, 300)
document.body.appendChild renderer.view
requestAnimFrame animate
texture = PIXI.Texture.fromImage("bunny.png")
bunny = new PIXI.Sprite(texture)
bunny.anchor.x = 0.5
bunny.anchor.y = 0.5
bunny.position.x = 200
bunny.position.y = 150
stage.addChild bunny
