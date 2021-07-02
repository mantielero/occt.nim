##  Created on: 1995-12-08
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Result"
type
  BRepCheckAnalyzer* {.importcpp: "BRepCheck_Analyzer",
                      header: "BRepCheck_Analyzer.hxx", bycopy.} = object ## ! Constructs a shape validation object defined by the shape S.
                                                                     ## ! <S> is the  shape  to control.
                                                                     ## <GeomControls>  If
                                                                     ## ! False   only topological informaions  are checked.
                                                                     ## ! The
                                                                     ## geometricals controls are
                                                                     ## ! For a Vertex :
                                                                     ## !
                                                                     ## BRepCheck_InvalidToleranceValue  NYI
                                                                     ## ! For an Edge :
                                                                     ## !
                                                                     ## BRepCheck_InvalidCurveOnClosedSurface,
                                                                     ## !
                                                                     ## BRepCheck_InvalidCurveOnSurface,
                                                                     ## !
                                                                     ## BRepCheck_InvalidSameParameterFlag,
                                                                     ## !
                                                                     ## BRepCheck_InvalidToleranceValue  NYI
                                                                     ## ! For a face :
                                                                     ## !
                                                                     ## BRepCheck_UnorientableShape,
                                                                     ## !
                                                                     ## BRepCheck_IntersectingWires,
                                                                     ## !
                                                                     ## BRepCheck_InvalidToleranceValue  NYI
                                                                     ## ! For a wire :
                                                                     ## !
                                                                     ## BRepCheck_SelfIntersectingWire


proc constructBRepCheckAnalyzer*(s: TopoDS_Shape;
                                geomControls: StandardBoolean = standardTrue): BRepCheckAnalyzer {.
    constructor, importcpp: "BRepCheck_Analyzer(@)",
    header: "BRepCheck_Analyzer.hxx".}
proc init*(this: var BRepCheckAnalyzer; s: TopoDS_Shape;
          geomControls: StandardBoolean = standardTrue) {.importcpp: "Init",
    header: "BRepCheck_Analyzer.hxx".}
proc isValid*(this: BRepCheckAnalyzer; s: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc isValid*(this: BRepCheckAnalyzer): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc result*(this: BRepCheckAnalyzer; subS: TopoDS_Shape): Handle[BRepCheckResult] {.
    noSideEffect, importcpp: "Result", header: "BRepCheck_Analyzer.hxx".}

