local screen = {guiGetScreenSize()}
local resW, resH = 1920, 1080
local sx, sy = screen[1]/resW, screen[2]/resH

function aToR(X, Y, sX, sY)
  local xd = X/resW or X
  local yd = Y/resH or Y
  local xsd = sX/resW or sX
  local ysd = sY/resH or sY
  return xd * screen[1], yd * screen[2], xsd * screen[1], ysd * screen[2]
end

_dxDrawImage = dxDrawImage
function dxDrawImage(x, y, w, h, ...)
    local x, y, w, h = aToR(x, y, w, h)
    return _dxDrawImage(x, y, w, h, ...)
end

_dxDrawText = dxDrawText
function dxDrawText (text, x, y, w, h, color, scale, ...)
    local x, y, w, h = sx * x, sy * y, sx * w, sy * h
    local scale = screen[2]/1100
    return _dxDrawText (text, x, y, (x + w), (y + h), color, scale, ...)
end

function isCursorOnElement(x, y, w, h)
  local x, y, w, h = sx * x, sy * y, sx * w, sy * h

  if (not isCursorShowing()) then
      return false
  end
  local mx, my = getCursorPosition()
  local fullx, fully = guiGetScreenSize()
  local cursorx, cursory = mx*fullx, my*fully
  if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
      return true
  else
      return false
  end
end