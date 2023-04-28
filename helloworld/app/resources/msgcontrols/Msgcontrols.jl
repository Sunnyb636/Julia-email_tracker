module Msgcontrols

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Msgcontrol

@kwdef mutable struct Msgcontrol <: AbstractModel
  id::DbId = DbId()
  message::String = ""
end

end
