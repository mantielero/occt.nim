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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../MAT2d/MAT2d_SequenceOfSequenceOfCurve,
  ../Standard/Standard_Integer, ../TopoDS/TopoDS_Shape,
  ../TColStd/TColStd_SequenceOfBoolean,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape, ../Standard/Standard_Boolean,
  ../TColGeom2d/TColGeom2d_SequenceOfCurve

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Shape"
type
  BRepMAT2d_Explorer* {.importcpp: "BRepMAT2d_Explorer",
                       header: "BRepMAT2d_Explorer.hxx", bycopy.} = object ## !
                                                                      ## Construction from a set of cuves from Geom2d.
                                                                      ## ! Assume  the
                                                                      ## orientation  of  the  closed   lines are
                                                                      ## !
                                                                      ## compatible. (ie if A is in B, the
                                                                      ## orientation of A and B
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


proc constructBRepMAT2d_Explorer*(): BRepMAT2d_Explorer {.constructor,
    importcpp: "BRepMAT2d_Explorer(@)", header: "BRepMAT2d_Explorer.hxx".}
proc constructBRepMAT2d_Explorer*(aFace: TopoDS_Face): BRepMAT2d_Explorer {.
    constructor, importcpp: "BRepMAT2d_Explorer(@)",
    header: "BRepMAT2d_Explorer.hxx".}
proc Clear*(this: var BRepMAT2d_Explorer) {.importcpp: "Clear",
                                        header: "BRepMAT2d_Explorer.hxx".}
proc Perform*(this: var BRepMAT2d_Explorer; aFace: TopoDS_Face) {.
    importcpp: "Perform", header: "BRepMAT2d_Explorer.hxx".}
proc NumberOfContours*(this: BRepMAT2d_Explorer): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfContours", header: "BRepMAT2d_Explorer.hxx".}
proc NumberOfCurves*(this: BRepMAT2d_Explorer; IndexContour: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NumberOfCurves", header: "BRepMAT2d_Explorer.hxx".}
proc Init*(this: var BRepMAT2d_Explorer; IndexContour: Standard_Integer) {.
    importcpp: "Init", header: "BRepMAT2d_Explorer.hxx".}
proc More*(this: BRepMAT2d_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepMAT2d_Explorer.hxx".}
proc Next*(this: var BRepMAT2d_Explorer) {.importcpp: "Next",
                                       header: "BRepMAT2d_Explorer.hxx".}
proc Value*(this: BRepMAT2d_Explorer): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Value", header: "BRepMAT2d_Explorer.hxx".}
proc Shape*(this: BRepMAT2d_Explorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepMAT2d_Explorer.hxx".}
proc Contour*(this: BRepMAT2d_Explorer; IndexContour: Standard_Integer): TColGeom2d_SequenceOfCurve {.
    noSideEffect, importcpp: "Contour", header: "BRepMAT2d_Explorer.hxx".}
proc IsModified*(this: BRepMAT2d_Explorer; aShape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "BRepMAT2d_Explorer.hxx".}
proc ModifiedShape*(this: BRepMAT2d_Explorer; aShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepMAT2d_Explorer.hxx".}
proc GetIsClosed*(this: BRepMAT2d_Explorer): TColStd_SequenceOfBoolean {.
    noSideEffect, importcpp: "GetIsClosed", header: "BRepMAT2d_Explorer.hxx".}