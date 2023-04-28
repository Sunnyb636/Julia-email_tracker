using SearchLight
SearchLight.Migration.create_migrations_table()
Genie.newresource("MailTracks")

using MailTracks
MailTrack()
a=MailTrack(name="sunny")
save(a)

find(MailTrack,mail="")


SearchLight.Migration.last_up()
SearchLight.Migration.down()
MailTrack()







using Genie, Genie.Router, Genie.Assets

Genie.config.websockets_server = true # enable the websockets server

Genie.config.webchannels_default_route="sunny"


route("/hello") do
  Assets.channels_support()
end



up() # start the servers
Genie.WebChannels.broadcast("sunny","abhds")

v=[]

#d=Dict()
channel("/sunny/echo") do
    a= params()[:WS_CLIENT]
     push!(v,a)
    # d[hash(a)]=a
    "Received: $(params(:payload))"
    print("$(params(:payload))")
end



Genie.WebChannels.message(v[2],"helloall")
hash(v[1])