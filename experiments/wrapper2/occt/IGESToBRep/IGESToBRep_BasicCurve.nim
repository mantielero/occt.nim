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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IGESToBRep_CurveAndSurface,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

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
  IGESToBRep_BasicCurve* {.importcpp: "IGESToBRep_BasicCurve",
                          header: "IGESToBRep_BasicCurve.hxx", bycopy.} = object of IGESToBRep_CurveAndSurface ##
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


proc constructIGESToBRep_BasicCurve*(): IGESToBRep_BasicCurve {.constructor,
    importcpp: "IGESToBRep_BasicCurve(@)", header: "IGESToBRep_BasicCurve.hxx".}
proc constructIGESToBRep_BasicCurve*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_BasicCurve {.
    constructor, importcpp: "IGESToBRep_BasicCurve(@)",
    header: "IGESToBRep_BasicCurve.hxx".}
proc constructIGESToBRep_BasicCurve*(eps: Standard_Real; epsGeom: Standard_Real;
                                    epsCoeff: Standard_Real;
                                    mode: Standard_Boolean;
                                    modeapprox: Standard_Boolean;
                                    optimized: Standard_Boolean): IGESToBRep_BasicCurve {.
    constructor, importcpp: "IGESToBRep_BasicCurve(@)",
    header: "IGESToBRep_BasicCurve.hxx".}
proc TransferBasicCurve*(this: var IGESToBRep_BasicCurve;
                        start: handle[IGESData_IGESEntity]): handle[Geom_Curve] {.
    importcpp: "TransferBasicCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dBasicCurve*(this: var IGESToBRep_BasicCurve;
                          start: handle[IGESData_IGESEntity]): handle[Geom2d_Curve] {.
    importcpp: "Transfer2dBasicCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc TransferBSplineCurve*(this: var IGESToBRep_BasicCurve;
                          start: handle[IGESGeom_BSplineCurve]): handle[Geom_Curve] {.
    importcpp: "TransferBSplineCurve", header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dBSplineCurve*(this: var IGESToBRep_BasicCurve;
                            start: handle[IGESGeom_BSplineCurve]): handle[
    Geom2d_Curve] {.importcpp: "Transfer2dBSplineCurve",
                   header: "IGESToBRep_BasicCurve.hxx".}
proc TransferCircularArc*(this: var IGESToBRep_BasicCurve;
                         start: handle[IGESGeom_CircularArc]): handle[Geom_Curve] {.
    importcpp: "TransferCircularArc", header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dCircularArc*(this: var IGESToBRep_BasicCurve;
                           start: handle[IGESGeom_CircularArc]): handle[
    Geom2d_Curve] {.importcpp: "Transfer2dCircularArc",
                   header: "IGESToBRep_BasicCurve.hxx".}
proc TransferConicArc*(this: var IGESToBRep_BasicCurve;
                      start: handle[IGESGeom_ConicArc]): handle[Geom_Curve] {.
    importcpp: "TransferConicArc", header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dConicArc*(this: var IGESToBRep_BasicCurve;
                        start: handle[IGESGeom_ConicArc]): handle[Geom2d_Curve] {.
    importcpp: "Transfer2dConicArc", header: "IGESToBRep_BasicCurve.hxx".}
proc TransferCopiousData*(this: var IGESToBRep_BasicCurve;
                         start: handle[IGESGeom_CopiousData]): handle[
    Geom_BSplineCurve] {.importcpp: "TransferCopiousData",
                        header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dCopiousData*(this: var IGESToBRep_BasicCurve;
                           start: handle[IGESGeom_CopiousData]): handle[
    Geom2d_BSplineCurve] {.importcpp: "Transfer2dCopiousData",
                          header: "IGESToBRep_BasicCurve.hxx".}
proc TransferLine*(this: var IGESToBRep_BasicCurve; start: handle[IGESGeom_Line]): handle[
    Geom_Curve] {.importcpp: "TransferLine", header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dLine*(this: var IGESToBRep_BasicCurve; start: handle[IGESGeom_Line]): handle[
    Geom2d_Curve] {.importcpp: "Transfer2dLine",
                   header: "IGESToBRep_BasicCurve.hxx".}
proc TransferSplineCurve*(this: var IGESToBRep_BasicCurve;
                         start: handle[IGESGeom_SplineCurve]): handle[
    Geom_BSplineCurve] {.importcpp: "TransferSplineCurve",
                        header: "IGESToBRep_BasicCurve.hxx".}
proc Transfer2dSplineCurve*(this: var IGESToBRep_BasicCurve;
                           start: handle[IGESGeom_SplineCurve]): handle[
    Geom2d_BSplineCurve] {.importcpp: "Transfer2dSplineCurve",
                          header: "IGESToBRep_BasicCurve.hxx".}
proc TransferTransformation*(this: var IGESToBRep_BasicCurve;
                            start: handle[IGESGeom_TransformationMatrix]): handle[
    Geom_Transformation] {.importcpp: "TransferTransformation",
                          header: "IGESToBRep_BasicCurve.hxx".}