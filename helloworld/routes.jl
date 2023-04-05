using Genie.Router
using Genie.Requests
route("/") do
  serve_static_file("welcome.html")
end

using MailTracks

route("/mail") do
  #serve_static_file("emai.html")
  q = payload(:mail)
  f = payload(:name)

  c = MailTrack(mail=q,name=f)
  #d = find(Mailtrack,mail=q)


  save(c)
end

