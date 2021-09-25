##  Created on: 1993-04-14
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  BRepGPropFace* {.importcpp: "BRepGProp_Face", header: "BRepGProp_Face.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructor.
                                                                                        ## Initializes
                                                                                        ## the
                                                                                        ## object
                                                                                        ## with
                                                                                        ## a
                                                                                        ## flag
                                                                                        ## IsUseSpan
                                                                                        ##
                                                                                        ## !
                                                                                        ## that
                                                                                        ## says
                                                                                        ## if
                                                                                        ## it
                                                                                        ## is
                                                                                        ## necessary
                                                                                        ## to
                                                                                        ## define
                                                                                        ## spans
                                                                                        ## on
                                                                                        ## a
                                                                                        ## face.
                                                                                        ##
                                                                                        ## !
                                                                                        ## This
                                                                                        ## option
                                                                                        ## has
                                                                                        ## an
                                                                                        ## effect
                                                                                        ## only
                                                                                        ## for
                                                                                        ## BSpline
                                                                                        ## faces.
                                                                                        ## Spans
                                                                                        ##
                                                                                        ## !
                                                                                        ## are
                                                                                        ## returned
                                                                                        ## by
                                                                                        ## the
                                                                                        ## methods
                                                                                        ## GetUKnots
                                                                                        ## and
                                                                                        ## GetTKnots.


proc constructBRepGPropFace*(isUseSpan: bool = false): BRepGPropFace {.constructor,
    importcpp: "BRepGProp_Face(@)", header: "BRepGProp_Face.hxx".}
proc constructBRepGPropFace*(f: TopoDS_Face; isUseSpan: bool = false): BRepGPropFace {.
    constructor, importcpp: "BRepGProp_Face(@)", header: "BRepGProp_Face.hxx".}
proc load*(this: var BRepGPropFace; f: TopoDS_Face) {.importcpp: "Load",
    header: "BRepGProp_Face.hxx".}
proc vIntegrationOrder*(this: BRepGPropFace): int {.noSideEffect,
    importcpp: "VIntegrationOrder", header: "BRepGProp_Face.hxx".}
proc naturalRestriction*(this: BRepGPropFace): bool {.noSideEffect,
    importcpp: "NaturalRestriction", header: "BRepGProp_Face.hxx".}
proc getFace*(this: BRepGPropFace): TopoDS_Face {.noSideEffect, importcpp: "GetFace",
    header: "BRepGProp_Face.hxx".}
proc value2d*(this: BRepGPropFace; u: float): Pnt2d {.noSideEffect,
    importcpp: "Value2d", header: "BRepGProp_Face.hxx".}
proc sIntOrder*(this: BRepGPropFace; eps: float): int {.noSideEffect,
    importcpp: "SIntOrder", header: "BRepGProp_Face.hxx".}
proc sVIntSubs*(this: BRepGPropFace): int {.noSideEffect, importcpp: "SVIntSubs",
                                        header: "BRepGProp_Face.hxx".}
proc sUIntSubs*(this: BRepGPropFace): int {.noSideEffect, importcpp: "SUIntSubs",
                                        header: "BRepGProp_Face.hxx".}
proc uKnots*(this: BRepGPropFace; knots: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "UKnots", header: "BRepGProp_Face.hxx".}
proc vKnots*(this: BRepGPropFace; knots: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "VKnots", header: "BRepGProp_Face.hxx".}
proc lIntOrder*(this: BRepGPropFace; eps: float): int {.noSideEffect,
    importcpp: "LIntOrder", header: "BRepGProp_Face.hxx".}
proc lIntSubs*(this: BRepGPropFace): int {.noSideEffect, importcpp: "LIntSubs",
                                       header: "BRepGProp_Face.hxx".}
proc lKnots*(this: BRepGPropFace; knots: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "LKnots", header: "BRepGProp_Face.hxx".}
proc uIntegrationOrder*(this: BRepGPropFace): int {.noSideEffect,
    importcpp: "UIntegrationOrder", header: "BRepGProp_Face.hxx".}
proc bounds*(this: BRepGPropFace; u1: var float; u2: var float; v1: var float; v2: var float) {.
    noSideEffect, importcpp: "Bounds", header: "BRepGProp_Face.hxx".}
proc normal*(this: BRepGPropFace; u: float; v: float; p: var Pnt; vNor: var Vec) {.
    noSideEffect, importcpp: "Normal", header: "BRepGProp_Face.hxx".}
proc load*(this: var BRepGPropFace; e: TopoDS_Edge): bool {.importcpp: "Load",
    header: "BRepGProp_Face.hxx".}
proc firstParameter*(this: BRepGPropFace): float {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepGProp_Face.hxx".}
proc lastParameter*(this: BRepGPropFace): float {.noSideEffect,
    importcpp: "LastParameter", header: "BRepGProp_Face.hxx".}
proc integrationOrder*(this: BRepGPropFace): int {.noSideEffect,
    importcpp: "IntegrationOrder", header: "BRepGProp_Face.hxx".}
proc d12d*(this: BRepGPropFace; u: float; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D12d", header: "BRepGProp_Face.hxx".}
proc load*(this: var BRepGPropFace; isFirstParam: bool; theIsoType: GeomAbsIsoType) {.
    importcpp: "Load", header: "BRepGProp_Face.hxx".}
proc getUKnots*(this: BRepGPropFace; theUMin: float; theUMax: float;
               theUKnots: var Handle[TColStdHArray1OfReal]) {.noSideEffect,
    importcpp: "GetUKnots", header: "BRepGProp_Face.hxx".}
proc getTKnots*(this: BRepGPropFace; theTMin: float; theTMax: float;
               theTKnots: var Handle[TColStdHArray1OfReal]) {.noSideEffect,
    importcpp: "GetTKnots", header: "BRepGProp_Face.hxx".}
