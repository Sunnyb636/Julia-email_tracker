module MailTracks

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export MailTrack

@kwdef mutable struct MailTrack <: AbstractModel
  id::DbId = DbId()
  mail::String = ""
  name::String = ""
  counts::Integer = 0

end

end
