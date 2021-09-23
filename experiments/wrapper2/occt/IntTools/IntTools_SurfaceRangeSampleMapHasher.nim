##  Created on: 2005-10-14
##  Created by: Mikhail KLOKOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IntTools_SurfaceRangeSample"
type
  IntTools_SurfaceRangeSampleMapHasher* {.
      importcpp: "IntTools_SurfaceRangeSampleMapHasher",
      header: "IntTools_SurfaceRangeSampleMapHasher.hxx", bycopy.} = object ## ! Computes a hash code for the given key, in the range [1,
                                                                       ## theUpperBound]
                                                                       ## ! @param theKey the key which hash code is to be computed
                                                                       ## ! @param
                                                                       ## theUpperBound the upper bound of the range a computing hash code must be within
                                                                       ## ! @return a computed hash code, in the range [1,
                                                                       ## theUpperBound]


proc HashCode*(theKey: IntTools_SurfaceRangeSample; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "IntTools_SurfaceRangeSampleMapHasher::HashCode(@)",
    header: "IntTools_SurfaceRangeSampleMapHasher.hxx".}
proc IsEqual*(S1: IntTools_SurfaceRangeSample; S2: IntTools_SurfaceRangeSample): Standard_Boolean {.
    importcpp: "IntTools_SurfaceRangeSampleMapHasher::IsEqual(@)",
    header: "IntTools_SurfaceRangeSampleMapHasher.hxx".}