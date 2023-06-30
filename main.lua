local push = require "dependencies.push"

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 640
VIRTUAL_HEIGHT = 480

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setTitle('Mini Roguelike')

    love.graphics.setBackgroundColor(love.math.colorFromBytes(34, 35, 35))

    TileSize = 8
    TilemapImage = love.graphics.newImage("assets/colored_tilemap_packed.png")

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })
end

function love.update(dt)
end

function love.draw()
    push:start()

    love.graphics.draw(TilemapImage)

    push:finish()
end
