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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepAdaptor/BRepAdaptor_Surface,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../gp/gp_Pnt2d, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_IsoType,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  BRepGProp_Face* {.importcpp: "BRepGProp_Face", header: "BRepGProp_Face.hxx", bycopy.} = object ##
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


proc constructBRepGProp_Face*(IsUseSpan: Standard_Boolean = Standard_False): BRepGProp_Face {.
    constructor, importcpp: "BRepGProp_Face(@)", header: "BRepGProp_Face.hxx".}
proc constructBRepGProp_Face*(F: TopoDS_Face;
                             IsUseSpan: Standard_Boolean = Standard_False): BRepGProp_Face {.
    constructor, importcpp: "BRepGProp_Face(@)", header: "BRepGProp_Face.hxx".}
proc Load*(this: var BRepGProp_Face; F: TopoDS_Face) {.importcpp: "Load",
    header: "BRepGProp_Face.hxx".}
proc VIntegrationOrder*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "VIntegrationOrder", header: "BRepGProp_Face.hxx".}
proc NaturalRestriction*(this: BRepGProp_Face): Standard_Boolean {.noSideEffect,
    importcpp: "NaturalRestriction", header: "BRepGProp_Face.hxx".}
proc GetFace*(this: BRepGProp_Face): TopoDS_Face {.noSideEffect,
    importcpp: "GetFace", header: "BRepGProp_Face.hxx".}
proc Value2d*(this: BRepGProp_Face; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value2d", header: "BRepGProp_Face.hxx".}
proc SIntOrder*(this: BRepGProp_Face; Eps: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "SIntOrder", header: "BRepGProp_Face.hxx".}
proc SVIntSubs*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "SVIntSubs", header: "BRepGProp_Face.hxx".}
proc SUIntSubs*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "SUIntSubs", header: "BRepGProp_Face.hxx".}
proc UKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "UKnots", header: "BRepGProp_Face.hxx".}
proc VKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "VKnots", header: "BRepGProp_Face.hxx".}
proc LIntOrder*(this: BRepGProp_Face; Eps: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "LIntOrder", header: "BRepGProp_Face.hxx".}
proc LIntSubs*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "LIntSubs", header: "BRepGProp_Face.hxx".}
proc LKnots*(this: BRepGProp_Face; Knots: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "LKnots", header: "BRepGProp_Face.hxx".}
proc UIntegrationOrder*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "UIntegrationOrder", header: "BRepGProp_Face.hxx".}
proc Bounds*(this: BRepGProp_Face; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "BRepGProp_Face.hxx".}
proc Normal*(this: BRepGProp_Face; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
            VNor: var gp_Vec) {.noSideEffect, importcpp: "Normal",
                             header: "BRepGProp_Face.hxx".}
proc Load*(this: var BRepGProp_Face; E: TopoDS_Edge): bool {.importcpp: "Load",
    header: "BRepGProp_Face.hxx".}
proc FirstParameter*(this: BRepGProp_Face): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepGProp_Face.hxx".}
proc LastParameter*(this: BRepGProp_Face): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "BRepGProp_Face.hxx".}
proc IntegrationOrder*(this: BRepGProp_Face): Standard_Integer {.noSideEffect,
    importcpp: "IntegrationOrder", header: "BRepGProp_Face.hxx".}
proc D12d*(this: BRepGProp_Face; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D12d", header: "BRepGProp_Face.hxx".}
proc Load*(this: var BRepGProp_Face; IsFirstParam: Standard_Boolean;
          theIsoType: GeomAbs_IsoType) {.importcpp: "Load",
                                       header: "BRepGProp_Face.hxx".}
proc GetUKnots*(this: BRepGProp_Face; theUMin: Standard_Real; theUMax: Standard_Real;
               theUKnots: var handle[TColStd_HArray1OfReal]) {.noSideEffect,
    importcpp: "GetUKnots", header: "BRepGProp_Face.hxx".}
proc GetTKnots*(this: BRepGProp_Face; theTMin: Standard_Real; theTMax: Standard_Real;
               theTKnots: var handle[TColStd_HArray1OfReal]) {.noSideEffect,
    importcpp: "GetTKnots", header: "BRepGProp_Face.hxx".}