##  Created on: 1998-09-01
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_LocationGuide"
discard "forward decl of BRepFill_ACRLaw"
discard "forward decl of BRepFill_ACRLaw"
type
  HandleBRepFillACRLaw* = Handle[BRepFillACRLaw]

## ! Build Location Law,  with a Wire.   In the case
## ! of guided contour and trihedron by reduced
## ! curvilinear abscissa

type
  BRepFillACRLaw* {.importcpp: "BRepFill_ACRLaw", header: "BRepFill_ACRLaw.hxx",
                   bycopy.} = object of BRepFillLocationLaw


proc constructBRepFillACRLaw*(path: TopoDS_Wire; law: Handle[GeomFillLocationGuide]): BRepFillACRLaw {.
    constructor, importcpp: "BRepFill_ACRLaw(@)", header: "BRepFill_ACRLaw.hxx".}
type
  BRepFillACRLawbaseType* = BRepFillLocationLaw

proc getTypeName*(): cstring {.importcpp: "BRepFill_ACRLaw::get_type_name(@)",
                            header: "BRepFill_ACRLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_ACRLaw::get_type_descriptor(@)",
    header: "BRepFill_ACRLaw.hxx".}
proc dynamicType*(this: BRepFillACRLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_ACRLaw.hxx".}
