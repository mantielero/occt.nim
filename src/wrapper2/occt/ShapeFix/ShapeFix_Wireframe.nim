##  Created on: 1999-08-24
##  Created by: Sergei ZERTCHANINOV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeFix_Wireframe"
discard "forward decl of ShapeFix_Wireframe"
type
  HandleShapeFixWireframe* = Handle[ShapeFixWireframe]

## ! Provides methods for fixing wireframe of shape

type
  ShapeFixWireframe* {.importcpp: "ShapeFix_Wireframe",
                      header: "ShapeFix_Wireframe.hxx", bycopy.} = object of ShapeFixRoot


proc constructShapeFixWireframe*(): ShapeFixWireframe {.constructor,
    importcpp: "ShapeFix_Wireframe(@)", header: "ShapeFix_Wireframe.hxx".}
proc constructShapeFixWireframe*(shape: TopoDS_Shape): ShapeFixWireframe {.
    constructor, importcpp: "ShapeFix_Wireframe(@)",
    header: "ShapeFix_Wireframe.hxx".}
proc clearStatuses*(this: var ShapeFixWireframe) {.importcpp: "ClearStatuses",
    header: "ShapeFix_Wireframe.hxx".}
proc load*(this: var ShapeFixWireframe; shape: TopoDS_Shape) {.importcpp: "Load",
    header: "ShapeFix_Wireframe.hxx".}
proc fixWireGaps*(this: var ShapeFixWireframe): StandardBoolean {.
    importcpp: "FixWireGaps", header: "ShapeFix_Wireframe.hxx".}
proc fixSmallEdges*(this: var ShapeFixWireframe): StandardBoolean {.
    importcpp: "FixSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc checkSmallEdges*(this: var ShapeFixWireframe;
                     theSmallEdges: var TopToolsMapOfShape;
                     theEdgeToFaces: var TopToolsDataMapOfShapeListOfShape;
                     theFaceWithSmall: var TopToolsDataMapOfShapeListOfShape;
                     theMultyEdges: var TopToolsMapOfShape): StandardBoolean {.
    importcpp: "CheckSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc mergeSmallEdges*(this: var ShapeFixWireframe;
                     theSmallEdges: var TopToolsMapOfShape;
                     theEdgeToFaces: var TopToolsDataMapOfShapeListOfShape;
                     theFaceWithSmall: var TopToolsDataMapOfShapeListOfShape;
                     theMultyEdges: var TopToolsMapOfShape;
                     theModeDrop: StandardBoolean = standardFalse;
                     theLimitAngle: StandardReal = -1): StandardBoolean {.
    importcpp: "MergeSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc statusWireGaps*(this: ShapeFixWireframe; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusWireGaps", header: "ShapeFix_Wireframe.hxx".}
proc statusSmallEdges*(this: ShapeFixWireframe; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "StatusSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc shape*(this: var ShapeFixWireframe): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Wireframe.hxx".}
proc modeDropSmallEdges*(this: var ShapeFixWireframe): var StandardBoolean {.
    importcpp: "ModeDropSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc setLimitAngle*(this: var ShapeFixWireframe; theLimitAngle: StandardReal) {.
    importcpp: "SetLimitAngle", header: "ShapeFix_Wireframe.hxx".}
proc limitAngle*(this: ShapeFixWireframe): StandardReal {.noSideEffect,
    importcpp: "LimitAngle", header: "ShapeFix_Wireframe.hxx".}
type
  ShapeFixWireframebaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Wireframe::get_type_name(@)",
                            header: "ShapeFix_Wireframe.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Wireframe::get_type_descriptor(@)",
    header: "ShapeFix_Wireframe.hxx".}
proc dynamicType*(this: ShapeFixWireframe): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Wireframe.hxx".}

