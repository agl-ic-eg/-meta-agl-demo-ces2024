-- ALSA monitor config file --

alsa_monitor = {}

alsa_monitor.properties = {
  ["alsa.jack-device"] = false,
  ["alsa.reserve"] = false,
}

alsa_monitor.rules = {
  -- loopback devices
  {
    matches = {
      {
        -- Loopback device
        { "node.name", "matches", "alsa_output.*" },
        { "api.alsa.card.id", "matches", "Loopback*" },
        { "api.alsa.path", "=", "hw:8" },
      },
    },
    apply_properties = {
      ["priority.driver"]        = 1100,
      ["priority.session"]       = 1100,
    }
  },
}

function alsa_monitor.enable()
  load_monitor("alsa", {
    properties = alsa_monitor.properties,
    rules = alsa_monitor.rules,
  })
end
