##  Created on: 1998-07-27
##  Created by: Philippe MANGIN
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
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of BRepFill_Edge3DLaw"
discard "forward decl of BRepFill_Edge3DLaw"
type
  HandleC1C1* = Handle[BRepFillEdge3DLaw]

## ! Build Location Law, with a  Wire.

type
  BRepFillEdge3DLaw* {.importcpp: "BRepFill_Edge3DLaw",
                      header: "BRepFill_Edge3DLaw.hxx", bycopy.} = object of BRepFillLocationLaw


proc constructBRepFillEdge3DLaw*(path: TopoDS_Wire;
                                law: Handle[GeomFillLocationLaw]): BRepFillEdge3DLaw {.
    constructor, importcpp: "BRepFill_Edge3DLaw(@)",
    header: "BRepFill_Edge3DLaw.hxx".}
type
  BRepFillEdge3DLawbaseType* = BRepFillLocationLaw

proc getTypeName*(): cstring {.importcpp: "BRepFill_Edge3DLaw::get_type_name(@)",
                            header: "BRepFill_Edge3DLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_Edge3DLaw::get_type_descriptor(@)",
    header: "BRepFill_Edge3DLaw.hxx".}
proc dynamicType*(this: BRepFillEdge3DLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_Edge3DLaw.hxx".}