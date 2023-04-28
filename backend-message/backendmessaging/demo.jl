using SearchLight


# SearchLight.Migration.create_migrations_table()

SearchLight.Migration.last_up()
SearchLight.Migration.down()
using Messags
find(Messag,id=1)
m = find(Messag,id=1)


# using Genie, Genie.Router, Genie.Assets
# Genie.config.websockets_server = true
# Genie.config.webchannels_default_route = "chat"

# route("/hello") do
#   Assets.channels_support()
# end

haskey(d,111)


# d = Dict()
# channel("/chat/join") do
#     a = params()[:WS_CLIENT]
#     # push!(z, a)
#     id=params(:payload)["id"]
#     d[id]=a
#     "success"
#   end
  



Genie.WebChannels.message(d[122],"message")

Genie.WebChannels.broadcast("/chat/echo","hello form sunny")


Genie.WebChannels.message(d[111],message)


using Dates

# Get the current timestamp
ts = time()

# Print the timestamp in ISO 8601 format
println(DateTime(ts))

dt = DateTime(ts / 1000)


jsonwrite=Genie.Renderers.Json.JSONParser.json
jsonparse=Genie.Renderers.Json.JSONParser.parse
 a = jsonwrite(m)
 Backendmessaging.d
 Genie.WebChannels.message( Backendmessaging.d[111],a)

 