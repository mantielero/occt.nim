##  Created on: 1998-07-30
##  Created by: Pavel DURANDIN <pdn@nnov.matra-dtv.fr>
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ShapeAnalysis_HSequenceOfFreeBounds,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeAnalysis_FreeBoundData"
discard "forward decl of TopoDS_Wire"
type
  ShapeAnalysis_FreeBoundsProperties* {.importcpp: "ShapeAnalysis_FreeBoundsProperties", header: "ShapeAnalysis_FreeBoundsProperties.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructShapeAnalysis_FreeBoundsProperties*(): ShapeAnalysis_FreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc constructShapeAnalysis_FreeBoundsProperties*(shape: TopoDS_Shape;
    tolerance: Standard_Real; splitclosed: Standard_Boolean = Standard_False;
    splitopen: Standard_Boolean = Standard_False): ShapeAnalysis_FreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc constructShapeAnalysis_FreeBoundsProperties*(shape: TopoDS_Shape;
    splitclosed: Standard_Boolean = Standard_False;
    splitopen: Standard_Boolean = Standard_False): ShapeAnalysis_FreeBoundsProperties {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundsProperties(@)",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc Init*(this: var ShapeAnalysis_FreeBoundsProperties; shape: TopoDS_Shape;
          tolerance: Standard_Real;
          splitclosed: Standard_Boolean = Standard_False;
          splitopen: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc Init*(this: var ShapeAnalysis_FreeBoundsProperties; shape: TopoDS_Shape;
          splitclosed: Standard_Boolean = Standard_False;
          splitopen: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc Perform*(this: var ShapeAnalysis_FreeBoundsProperties): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc IsLoaded*(this: ShapeAnalysis_FreeBoundsProperties): Standard_Boolean {.
    noSideEffect, importcpp: "IsLoaded",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc Shape*(this: ShapeAnalysis_FreeBoundsProperties): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc Tolerance*(this: ShapeAnalysis_FreeBoundsProperties): Standard_Real {.
    noSideEffect, importcpp: "Tolerance",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc NbFreeBounds*(this: ShapeAnalysis_FreeBoundsProperties): Standard_Integer {.
    noSideEffect, importcpp: "NbFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc NbClosedFreeBounds*(this: ShapeAnalysis_FreeBoundsProperties): Standard_Integer {.
    noSideEffect, importcpp: "NbClosedFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc NbOpenFreeBounds*(this: ShapeAnalysis_FreeBoundsProperties): Standard_Integer {.
    noSideEffect, importcpp: "NbOpenFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc ClosedFreeBounds*(this: ShapeAnalysis_FreeBoundsProperties): handle[
    ShapeAnalysis_HSequenceOfFreeBounds] {.noSideEffect,
    importcpp: "ClosedFreeBounds",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc OpenFreeBounds*(this: ShapeAnalysis_FreeBoundsProperties): handle[
    ShapeAnalysis_HSequenceOfFreeBounds] {.noSideEffect,
    importcpp: "OpenFreeBounds", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc ClosedFreeBound*(this: ShapeAnalysis_FreeBoundsProperties;
                     index: Standard_Integer): handle[ShapeAnalysis_FreeBoundData] {.
    noSideEffect, importcpp: "ClosedFreeBound",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc OpenFreeBound*(this: ShapeAnalysis_FreeBoundsProperties;
                   index: Standard_Integer): handle[ShapeAnalysis_FreeBoundData] {.
    noSideEffect, importcpp: "OpenFreeBound",
    header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc DispatchBounds*(this: var ShapeAnalysis_FreeBoundsProperties): Standard_Boolean {.
    importcpp: "DispatchBounds", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc CheckContours*(this: var ShapeAnalysis_FreeBoundsProperties;
                   prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckContours", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc CheckNotches*(this: var ShapeAnalysis_FreeBoundsProperties;
                  prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc CheckNotches*(this: var ShapeAnalysis_FreeBoundsProperties;
                  fbData: var handle[ShapeAnalysis_FreeBoundData];
                  prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc CheckNotches*(this: var ShapeAnalysis_FreeBoundsProperties;
                  freebound: TopoDS_Wire; num: Standard_Integer;
                  notch: var TopoDS_Wire; distMax: var Standard_Real;
                  prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckNotches", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}
proc FillProperties*(this: var ShapeAnalysis_FreeBoundsProperties;
                    fbData: var handle[ShapeAnalysis_FreeBoundData];
                    prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FillProperties", header: "ShapeAnalysis_FreeBoundsProperties.hxx".}