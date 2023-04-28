using Genie, Genie.Router, Genie.Assets

Genie.config.websockets_server = true
Genie.config.webchannels_default_route = "chat"

route("/hello") do
  Assets.channels_support()
end

# z = []
d = Dict()
channel("/chat/echo") do
    a = params()[:WS_CLIENT]
    # push!(z, a)
    "Received: $(params(:payload))"
    print("$(params(:payload))")
    msg = params(:payload)["msg"]
    tid = params(:payload)["tid"]
    Genie.WebChannels.message(d[tid],msg)
    # for i in z
    #     msg = Genie.webchannel.receive(a)
    #     print("msg")
    #     if i == 1 
    #         # Genie.WebChannels.message(z[2], msg)
    #     else 
    #         # Genie.WebChannels.message(z[1], msg)
    #     end
    end 

   
   

    # for c in z
      # if c != a
        # Genie.WebChannels.send(c)
      # end
  
  # end

  # channel("/chat/echo2") do
  #   a = params()[:WS_CLIENT]
  #   push!(z, a)
  #   msg = params(:payload)["msg"]
  #   t=params(:payload)["t"]
  #   Genie.WebChannels.message(d[t],msg)
    # "Received: $(params(:payload))"
    # print("$(params(:payload))")
    # if a == z[1]
    #   Genie.WebChannels.message(z[2],msg)
    # else
    #   Genie.WebChannels.message(z[1],msg)
    # end
  # end

  channel("/chat/join") do
    a = params()[:WS_CLIENT]
    # push!(z, a)
    id=params(:payload)["id"]
    d[id]=a
    "success"
  end




  Genie.WebChannels.connected_clients()
  Genie.WebChannels.disconnected_clients()

  Genie.WebChannels.message(z[1],"message")
  





  Genie.WebChannels.connected_clients()


Genie.WebChannels.broadcast("chat","hello form sunny")