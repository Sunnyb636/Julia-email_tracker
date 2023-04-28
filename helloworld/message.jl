using Genie.Router
using Genie.Requests
using SearchLight
using HTTP, MailTracks


function handel_req(message::String)
  db = SQLite.DB("mailtracks")

  
route("/") do
    m = params(:message)
    save(m)
    return ("message saved successfully")
  end
end









function save_message(message::String)
   db = SQLite.DB("mailtracks")
   SQLite.execute(db, "INSERT INTO messages (message) VALUES (?)", message)
   SQLite.close(db)
end

route("/message") do
  message = params(:message)
  save(message["message"])
  return ("Message saved successfully")
end















