##  Created on: 1990-12-17
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TCompSolid"
discard "forward decl of TopoDS_TCompSolid"
type
  HandleTopoDS_TCompSolid* = Handle[TopoDS_TCompSolid]

## ! A set of solids connected by their faces.

type
  TopoDS_TCompSolid* {.importcpp: "TopoDS_TCompSolid",
                      header: "TopoDS_TCompSolid.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## TCompSolid.


proc constructTopoDS_TCompSolid*(): TopoDS_TCompSolid {.constructor,
    importcpp: "TopoDS_TCompSolid(@)", header: "TopoDS_TCompSolid.hxx".}
proc shapeType*(this: TopoDS_TCompSolid): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TCompSolid.hxx".}
proc emptyCopy*(this: TopoDS_TCompSolid): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TCompSolid.hxx".}
type
  TopoDS_TCompSolidbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TCompSolid::get_type_name(@)",
                            header: "TopoDS_TCompSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TCompSolid::get_type_descriptor(@)",
    header: "TopoDS_TCompSolid.hxx".}
proc dynamicType*(this: TopoDS_TCompSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TCompSolid.hxx".}
