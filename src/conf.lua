io.stdout:setvbuf("no") -- console output to Sublime

math.randomseed(os.time())

function love.conf(t)
    _scale = 3
    _game_width = 640
    _game_height = 360

    t.window.title = "LD35"
    -- t.window.icon = 'assets/icon.png'

    t.window.width = _game_width * _scale
    t.window.height = _game_height * _scale
    t.window.minwidth = _game_width
    t.window.minheight = _game_height
    t.window.resizable = false
    t.window.fullscreen = false
    t.window.fullscreentype = "desktop"

    t.window.vsync = false
    t.window.msaa = 0
    t.window.highdpi = false

    t.version = "0.10.1"
    t.console = false
    t.identity = 'save_dir'
    t.accelerometerjoystick = false
    t.gammacorrect = false

    t.modules.audio = true
    t.modules.event = true
    t.modules.graphics = true
    t.modules.image = true
    t.modules.joystick = true
    t.modules.keyboard = true
    t.modules.math = true
    t.modules.mouse = true
    t.modules.physics = false
    t.modules.sound = true
    t.modules.system = false
    t.modules.thread = false
    t.modules.timer = true
    t.modules.touch = false
    t.modules.video = false
    t.modules.window = true
end