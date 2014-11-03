animate = ->
    requestAnimFrame animate
    bunny.rotation += 0.1
    renderer.render stage
    return

get_random_num = (f, t) ->
    n = Math.floor((Math.random() * t) + f)
    return n

create_bunny = (x, y, texture) ->

    bunny = new PIXI.Sprite(texture)
    bunny.anchor.x = 0.5
    bunny.anchor.y = 0.5
    bunny.position.x = x
    bunny.position.y = y

    bunny.interactive = yes
    bunny.buttonMode = yes

    bunny.click = (interactionData) ->
        @position.x = @position.x+1
    return bunny

stage = new PIXI.Stage(0x66ff99)
renderer = PIXI.autoDetectRenderer(800, 800)
document.body.appendChild renderer.view
requestAnimFrame animate
renderer.render stage
texture = PIXI.Texture.fromImage("bunny.png")

for i in[0..3]

    bunny = create_bunny(get_random_num(200, 250), get_random_num(150, 200), texture)
    stage.addChild bunny
