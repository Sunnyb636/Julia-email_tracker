using Genie.Router
using Genie.Requests
using Genie, Genie.Router, Genie.Assets
using Dates

Genie.config.websockets_server = true
Genie.config.webchannels_default_route = "chat"


route("/") do
  serve_static_file("welcome.html")
end


using Messags
Messag()

route("/message") do
  m = payload(:message)
  # save(m)
  save(Messag(message=m))
  return ("message saved successfully")
end

route("/hello") do
  Assets.channels_support()
end

  d = Dict()
 channel("/chat/join") do
    a = params()[:WS_CLIENT]
     id=params(:payload)["id"]
     d[id]=a
     "success"
   end
channel("/chat/echo") do
    a = params()[:WS_CLIENT]
    "Received: $(params(:payload))"
    print("$(params(:payload))")
    m= params(:payload)["msg"]
    Rid = params(:payload)["Rid"]
    Sid = params(:payload)["Sid"]
    ts = now()
    save(Messag(Rid=Rid,message=m,Sid=Sid,Ts=ts))

     if haskey(d,Rid)== true
       Genie.WebChannels.message(d[Rid],m)
     else 
       return error
    end
  end

jsonwrite=Genie.Renderers.Json.JSONParser.json
jsonparse=Genie.Renderers.Json.JSONParser.parse
  channel("/chat/previousmessages") do
    a = params()[:WS_CLIENT]
    Rid = params(:payload)["Rid"]
   n = find(Messag,Rid=Rid,)
   g = jsonwrite(n)
     
  end