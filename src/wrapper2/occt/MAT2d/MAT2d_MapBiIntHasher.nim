##  Created on: 1993-11-19
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of MAT2d_BiInt"
type
  MAT2dMapBiIntHasher* {.importcpp: "MAT2d_MapBiIntHasher",
                        header: "MAT2d_MapBiIntHasher.hxx", bycopy.} = object ## !
                                                                         ## Computes a hash code for the given key, in the range [1,
                                                                         ## theUpperBound]
                                                                         ## ! @param theKey the key which hash code is to be
                                                                         ## computed
                                                                         ## ! @param
                                                                         ## theUpperBound the upper bound of the range a
                                                                         ## computing hash code must be within
                                                                         ## ! @return a
                                                                         ## computed hash code, in the range [1,
                                                                         ## theUpperBound]


proc hashCode*(theKey: MAT2dBiInt; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "MAT2d_MapBiIntHasher::HashCode(@)",
    header: "MAT2d_MapBiIntHasher.hxx".}
proc isEqual*(key1: MAT2dBiInt; key2: MAT2dBiInt): StandardBoolean {.
    importcpp: "MAT2d_MapBiIntHasher::IsEqual(@)",
    header: "MAT2d_MapBiIntHasher.hxx".}

