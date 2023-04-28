module Messags

import SearchLight: AbstractModel, DbId
import Base: @kwdef
using Dates
export Messag

@kwdef mutable struct Messag <: AbstractModel
  id::DbId = DbId()
  message::String = ""
  Sid::Int = 0
  Rid::Int = 0
  Ts::DateTime = now()

end

end
