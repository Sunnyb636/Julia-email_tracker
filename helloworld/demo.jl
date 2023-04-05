using SearchLight
SearchLight.Migration.create_migrations_table()
Genie.newresource("MailTracks")

using MailTracks
MailTrack()
a=MailTrack(name="sunny")
save(a)

find(MailTrack,mail="abcd@example.com")


SearchLight.Migration.last_up()
SearchLight.Migration.down()
MailTrack()
