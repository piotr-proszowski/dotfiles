hs.hotkey.bind({"cmd"}, 10, function()
  local app = hs.application.get("kitty")
  local log = hs.logger.new('hammerspoon','debug')
  hs.application.enableSpotlightForNameSearches(true)

  if app then
      if app:isFrontmost() then
          app:hide()
      else
          hs.application.launchOrFocus("kitty")
          app:activate()
      end
  else
      hs.application.launchOrFocus("kitty")
      app = hs.application.get("kitty")
  end
end)

watcher = hs.eventtap.new({
    hs.eventtap.event.types.keyDown
}, function(event)
    local code = event:getKeyCode()
    hs.logger.new('test', 'debug').d(code)
end)

watcher:start()