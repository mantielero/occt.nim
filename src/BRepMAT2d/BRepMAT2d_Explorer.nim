##  Created on: 1994-10-04
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Shape"
type
  BRepMAT2dExplorer* {.importcpp: "BRepMAT2d_Explorer",
                      header: "BRepMAT2d_Explorer.hxx", bycopy.} = object ## !
                                                                     ## Construction from a set of cuves from Geom2d.
                                                                     ## ! Assume  the   orientation  of  the  closed   lines are
                                                                     ## ! compatible. (ie if A is in B, the orientation of A and B
                                                                     ## ! has to be different.
                                                                     ## !
                                                                     ## ! Assume the explo contains only lines located in the
                                                                     ## ! area where the bisecting locus will be computed.
                                                                     ## !
                                                                     ## ! Assume a line don't cross itself or an other line.
                                                                     ## !
                                                                     ## ! A contour has to be construct in adding each curve in
                                                                     ## ! respect to the sense of the contour.
                                                                     ## !
                                                                     ## ! afirst point of a curve in a contour is equal to the last
                                                                     ## ! point of the precedent curve.
                                                                     ## !
                                                                     ## ! No  control of this  rules is done in the
                                                                     ## construction
                                                                     ## ! of the explorer


proc `new`*(this: var BRepMAT2dExplorer; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_Explorer::operator new",
    header: "BRepMAT2d_Explorer.hxx".}
proc `delete`*(this: var BRepMAT2dExplorer; theAddress: pointer) {.
    importcpp: "BRepMAT2d_Explorer::operator delete",
    header: "BRepMAT2d_Explorer.hxx".}
proc `new[]`*(this: var BRepMAT2dExplorer; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_Explorer::operator new[]",
    header: "BRepMAT2d_Explorer.hxx".}
proc `delete[]`*(this: var BRepMAT2dExplorer; theAddress: pointer) {.
    importcpp: "BRepMAT2d_Explorer::operator delete[]",
    header: "BRepMAT2d_Explorer.hxx".}
proc `new`*(this: var BRepMAT2dExplorer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepMAT2d_Explorer::operator new",
    header: "BRepMAT2d_Explorer.hxx".}
proc `delete`*(this: var BRepMAT2dExplorer; a2: pointer; a3: pointer) {.
    importcpp: "BRepMAT2d_Explorer::operator delete",
    header: "BRepMAT2d_Explorer.hxx".}
proc constructBRepMAT2dExplorer*(): BRepMAT2dExplorer {.constructor,
    importcpp: "BRepMAT2d_Explorer(@)", header: "BRepMAT2d_Explorer.hxx".}
proc constructBRepMAT2dExplorer*(aFace: TopoDS_Face): BRepMAT2dExplorer {.
    constructor, importcpp: "BRepMAT2d_Explorer(@)",
    header: "BRepMAT2d_Explorer.hxx".}
proc clear*(this: var BRepMAT2dExplorer) {.importcpp: "Clear",
                                       header: "BRepMAT2d_Explorer.hxx".}
proc perform*(this: var BRepMAT2dExplorer; aFace: TopoDS_Face) {.importcpp: "Perform",
    header: "BRepMAT2d_Explorer.hxx".}
proc numberOfContours*(this: BRepMAT2dExplorer): int {.noSideEffect,
    importcpp: "NumberOfContours", header: "BRepMAT2d_Explorer.hxx".}
proc numberOfCurves*(this: BRepMAT2dExplorer; indexContour: int): int {.noSideEffect,
    importcpp: "NumberOfCurves", header: "BRepMAT2d_Explorer.hxx".}
proc init*(this: var BRepMAT2dExplorer; indexContour: int) {.importcpp: "Init",
    header: "BRepMAT2d_Explorer.hxx".}
proc more*(this: BRepMAT2dExplorer): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "BRepMAT2d_Explorer.hxx".}
proc next*(this: var BRepMAT2dExplorer) {.importcpp: "Next",
                                      header: "BRepMAT2d_Explorer.hxx".}
proc value*(this: BRepMAT2dExplorer): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Value", header: "BRepMAT2d_Explorer.hxx".}
proc shape*(this: BRepMAT2dExplorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepMAT2d_Explorer.hxx".}
proc contour*(this: BRepMAT2dExplorer; indexContour: int): TColGeom2dSequenceOfCurve {.
    noSideEffect, importcpp: "Contour", header: "BRepMAT2d_Explorer.hxx".}
proc isModified*(this: BRepMAT2dExplorer; aShape: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsModified", header: "BRepMAT2d_Explorer.hxx".}
proc modifiedShape*(this: BRepMAT2dExplorer; aShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepMAT2d_Explorer.hxx".}
proc getIsClosed*(this: BRepMAT2dExplorer): TColStdSequenceOfBoolean {.noSideEffect,
    importcpp: "GetIsClosed", header: "BRepMAT2d_Explorer.hxx".}