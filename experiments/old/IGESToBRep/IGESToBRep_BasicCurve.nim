##  Created on: 1994-03-14
##  Created by: s:	Christophe GUYOT & Frederic UNTEREINER
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

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Geom2d_Curve"
discard "forward decl of IGESGeom_BSplineCurve"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_ConicArc"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of IGESGeom_CopiousData"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESGeom_SplineCurve"
discard "forward decl of Geom_Transformation"
discard "forward decl of IGESGeom_TransformationMatrix"
type
  IGESToBRepBasicCurve* {.importcpp: "IGESToBRep_BasicCurve",
                         header: "IGESToBRep_BasicCurve.hxx", bycopy.} = object of IGESToBRepCurveAndSurface ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## tool
                                                                                                      ## BasicCurve
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## run,
                                                                                                      ## with
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## epsilons
                                                                                                      ## set
                                                                                                      ## to
                                                                                                      ## 1.E-04,
                                                                                                      ## TheModeTopo
                                                                                                      ## to
                                                                                                      ## True,
                                                                                                      ## the
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## optimization
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## continuity
                                                                                                      ## to
                                                                                                      ## False.


proc constructIGESToBRepBasicCurve*(): IGESToBRepBasicCurve {.constructor,
    importcpp: "IGESToBRep_BasicCurve(@)", header: "IGESToBRep_BasicCurve.hxx".}
proc constructIGESToBRepBasicCurve*(cs: IGESToBRepCurveAndSurface): IGESToBRepBasicCurve {.
    constructor, importcpp: "IGESToBRep_BasicCurve(@)",
    header: "IGESToBRep_BasicCurve.hxx".}
proc constructIGESToBRepBasicCurve*(eps: cfloat; epsGeom: cfloat; epsCoeff: cfloat;
                                   mode: bool; modeapprox: bool; optimized: bool): IGESToBRepBasicCurve {.
    constructor, importcpp: "IGESToBRep_BasicCurve(@)",
    header: "IGESToBRep_BasicCurve.hxx".}
proc transferBasicCurve*(this: var IGESToBRepBasicCurve;
                        start: Handle[IGESDataIGESEntity]): Handle[GeomCurve] {.
    importcpp: "TransferBasicCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dBasicCurve*(this: var IGESToBRepBasicCurve;
                          start: Handle[IGESDataIGESEntity]): Handle[Geom2dCurve] {.
    importcpp: "Transfer2dBasicCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc transferBSplineCurve*(this: var IGESToBRepBasicCurve;
                          start: Handle[IGESGeomBSplineCurve]): Handle[GeomCurve] {.
    importcpp: "TransferBSplineCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dBSplineCurve*(this: var IGESToBRepBasicCurve;
                            start: Handle[IGESGeomBSplineCurve]): Handle[
    Geom2dCurve] {.importcpp: "Transfer2dBSplineCurve",
                  header: "IGESToBRep_BasicCurve.hxx".}
proc transferCircularArc*(this: var IGESToBRepBasicCurve;
                         start: Handle[IGESGeomCircularArc]): Handle[GeomCurve] {.
    importcpp: "TransferCircularArc", header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dCircularArc*(this: var IGESToBRepBasicCurve;
                           start: Handle[IGESGeomCircularArc]): Handle[Geom2dCurve] {.
    importcpp: "Transfer2dCircularArc", header: "IGESToBRep_BasicCurve.hxx".}
proc transferConicArc*(this: var IGESToBRepBasicCurve;
                      start: Handle[IGESGeomConicArc]): Handle[GeomCurve] {.
    importcpp: "TransferConicArc", header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dConicArc*(this: var IGESToBRepBasicCurve;
                        start: Handle[IGESGeomConicArc]): Handle[Geom2dCurve] {.
    importcpp: "Transfer2dConicArc", header: "IGESToBRep_BasicCurve.hxx".}
proc transferCopiousData*(this: var IGESToBRepBasicCurve;
                         start: Handle[IGESGeomCopiousData]): Handle[
    GeomBSplineCurve] {.importcpp: "TransferCopiousData",
                       header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dCopiousData*(this: var IGESToBRepBasicCurve;
                           start: Handle[IGESGeomCopiousData]): Handle[
    Geom2dBSplineCurve] {.importcpp: "Transfer2dCopiousData",
                         header: "IGESToBRep_BasicCurve.hxx".}
proc transferLine*(this: var IGESToBRepBasicCurve; start: Handle[IGESGeomLine]): Handle[
    GeomCurve] {.importcpp: "TransferLine", header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dLine*(this: var IGESToBRepBasicCurve; start: Handle[IGESGeomLine]): Handle[
    Geom2dCurve] {.importcpp: "Transfer2dLine", header: "IGESToBRep_BasicCurve.hxx".}
proc transferSplineCurve*(this: var IGESToBRepBasicCurve;
                         start: Handle[IGESGeomSplineCurve]): Handle[
    GeomBSplineCurve] {.importcpp: "TransferSplineCurve",
                       header: "IGESToBRep_BasicCurve.hxx".}
proc transfer2dSplineCurve*(this: var IGESToBRepBasicCurve;
                           start: Handle[IGESGeomSplineCurve]): Handle[
    Geom2dBSplineCurve] {.importcpp: "Transfer2dSplineCurve",
                         header: "IGESToBRep_BasicCurve.hxx".}
proc transferTransformation*(this: var IGESToBRepBasicCurve;
                            start: Handle[IGESGeomTransformationMatrix]): Handle[
    GeomTransformation] {.importcpp: "TransferTransformation",
                         header: "IGESToBRep_BasicCurve.hxx".}

























