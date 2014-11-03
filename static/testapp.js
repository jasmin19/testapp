(function() {
  var animate, bunny, create_bunny, get_random_num, i, renderer, stage, texture, _i;

  animate = function() {
    requestAnimFrame(animate);
    bunny.rotation += 0.1;
    renderer.render(stage);
  };

  get_random_num = function(f, t) {
    var n;
    n = Math.floor((Math.random() * t) + f);
    return n;
  };

  create_bunny = function(x, y, texture) {
    var bunny;
    bunny = new PIXI.Sprite(texture);
    bunny.anchor.x = 0.5;
    bunny.anchor.y = 0.5;
    bunny.position.x = x;
    bunny.position.y = y;
    bunny.interactive = true;
    bunny.buttonMode = true;
    bunny.click = function(interactionData) {
      return this.position.x = this.position.x + 1;
    };
    return bunny;
  };

  stage = new PIXI.Stage(0x66ff99);

  renderer = PIXI.autoDetectRenderer(800, 800);

  document.body.appendChild(renderer.view);

  requestAnimFrame(animate);

  renderer.render(stage);

  texture = PIXI.Texture.fromImage("bunny.png");

  for (i = _i = 0; _i <= 3; i = ++_i) {
    bunny = create_bunny(get_random_num(200, 250), get_random_num(150, 200), texture);
    stage.addChild(bunny);
  }

}).call(this);
