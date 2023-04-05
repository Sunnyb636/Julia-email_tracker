using SearchLight
SearchLight.Migration.create_migrations_table()
Genie.newresource("MailTracks")

using MailTracks
MailTrack()
a=MailTrack(name="sunny")
save(a)

find(MailTrack,id=4)


SearchLight.Migration.last_up()
SearchLight.Migration.down()