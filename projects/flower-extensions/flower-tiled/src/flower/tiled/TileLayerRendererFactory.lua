----------------------------------------------------------------------------------------------------
-- It is a factory class for creating a renderer TileLayer.
-- Switch the class generated by the orientation.
--
-- @author Makoto
-- @release V3.0.0
----------------------------------------------------------------------------------------------------

-- import
local class = require "flower.class"
local TileLayerRenderer = require "flower.tiled.TileLayerRenderer"
local IsometricLayerRenderer = require "flower.tiled.IsometricLayerRenderer"

-- class
local TileLayerRendererFactory = class()

---
-- Generate a renderer for the TileLayer.
-- @param layer TileLayer
-- @return TileLayerRenderer or IsometricLayerRenderer
function TileLayerRendererFactory:newInstance(layer)
    local tileMap = layer.tileMap

    if tileMap:isOrthogonal() then
        return TileLayerRenderer(layer)
    elseif tileMap:isIsometric() then
        return IsometricLayerRenderer(layer)
    else
        error("Unsupported orientation!!")
    end
end

return TileLayerRendererFactory