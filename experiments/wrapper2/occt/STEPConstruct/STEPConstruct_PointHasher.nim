##  Created on: 2003-01-15
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"
type
  STEPConstructPointHasher* {.importcpp: "STEPConstruct_PointHasher",
                             header: "STEPConstruct_PointHasher.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Computes
                                                                                   ## a
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## for
                                                                                   ## the
                                                                                   ## point,
                                                                                   ## in
                                                                                   ## the
                                                                                   ## range
                                                                                   ## [1,
                                                                                   ## theUpperBound]
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## thePoint
                                                                                   ## the
                                                                                   ## point
                                                                                   ## which
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## is
                                                                                   ## to
                                                                                   ## be
                                                                                   ## computed
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theUpperBound
                                                                                   ## the
                                                                                   ## upper
                                                                                   ## bound
                                                                                   ## of
                                                                                   ## the
                                                                                   ## range
                                                                                   ## a
                                                                                   ## computing
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## must
                                                                                   ## be
                                                                                   ## within
                                                                                   ##
                                                                                   ## !
                                                                                   ## @return
                                                                                   ## a
                                                                                   ## computed
                                                                                   ## hash
                                                                                   ## code,
                                                                                   ## in
                                                                                   ## the
                                                                                   ## range
                                                                                   ## [1,
                                                                                   ## theUpperBound]


proc hashCode*(thePoint: Pnt; theUpperBound: int): int {.
    importcpp: "STEPConstruct_PointHasher::HashCode(@)",
    header: "STEPConstruct_PointHasher.hxx".}
proc isEqual*(point1: Pnt; point2: Pnt): bool {.
    importcpp: "STEPConstruct_PointHasher::IsEqual(@)",
    header: "STEPConstruct_PointHasher.hxx".}
