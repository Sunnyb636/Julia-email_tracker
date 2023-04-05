using Genie.Router
using Genie.Requests
route("/") do
  serve_static_file("welcome.html")
end

using MailTracks

route("/mail") do
  q = payload(:mail)
  f = payload(:name)

 
  c = findfirst(MailTrack, mail = q)

  if isnothing(c) 
    c = MailTrack(mail=q, name=f, counts=1)
    save(c)
  else 
    c.counts += 1
    update!(c)
  end
end
