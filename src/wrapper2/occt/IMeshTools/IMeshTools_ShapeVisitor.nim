##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  IMeshToolsShapeVisitor* {.importcpp: "IMeshTools_ShapeVisitor",
                           header: "IMeshTools_ShapeVisitor.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Destructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Constructor.


proc destroyIMeshToolsShapeVisitor*(this: var IMeshToolsShapeVisitor) {.
    importcpp: "#.~IMeshTools_ShapeVisitor()",
    header: "IMeshTools_ShapeVisitor.hxx".}
proc visit*(this: var IMeshToolsShapeVisitor; theFace: TopoDS_Face) {.
    importcpp: "Visit", header: "IMeshTools_ShapeVisitor.hxx".}
proc visit*(this: var IMeshToolsShapeVisitor; theEdge: TopoDS_Edge) {.
    importcpp: "Visit", header: "IMeshTools_ShapeVisitor.hxx".}
type
  IMeshToolsShapeVisitorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshTools_ShapeVisitor::get_type_name(@)",
                            header: "IMeshTools_ShapeVisitor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_ShapeVisitor::get_type_descriptor(@)",
    header: "IMeshTools_ShapeVisitor.hxx".}
proc dynamicType*(this: IMeshToolsShapeVisitor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_ShapeVisitor.hxx".}

