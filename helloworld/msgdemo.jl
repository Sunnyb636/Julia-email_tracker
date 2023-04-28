using Genie, Genie.Router, Genie.Assets
using Genie.Requests
Genie.config.websockets_server = true
Genie.config.webchannels_default_route = "chat"
using SearchLight
SearchLight.Migration.create_migrations_table()


using Msgcontrols
Msgcontrol()

route("/message") do
    m = payload(:message)
    # save(m)
    save(Msgcontrol(message=m))
    return ("message saved successfully")
  end





