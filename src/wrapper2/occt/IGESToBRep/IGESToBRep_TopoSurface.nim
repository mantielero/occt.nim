##  Created on: 1994-04-21
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  IGESToBRep_CurveAndSurface, ../Standard/Standard_Boolean

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_RuledSurface"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
discard "forward decl of IGESGeom_TabulatedCylinder"
discard "forward decl of IGESGeom_OffsetSurface"
discard "forward decl of IGESGeom_TrimmedSurface"
discard "forward decl of IGESGeom_BoundedSurface"
discard "forward decl of IGESGeom_Plane"
discard "forward decl of IGESSolid_PlaneSurface"
discard "forward decl of IGESBasic_SingleParent"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Trsf2d"
type
  IGESToBRep_TopoSurface* {.importcpp: "IGESToBRep_TopoSurface",
                           header: "IGESToBRep_TopoSurface.hxx", bycopy.} = object of IGESToBRep_CurveAndSurface ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## tool
                                                                                                          ## TopoSurface
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


proc constructIGESToBRep_TopoSurface*(): IGESToBRep_TopoSurface {.constructor,
    importcpp: "IGESToBRep_TopoSurface(@)", header: "IGESToBRep_TopoSurface.hxx".}
proc constructIGESToBRep_TopoSurface*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_TopoSurface {.
    constructor, importcpp: "IGESToBRep_TopoSurface(@)",
    header: "IGESToBRep_TopoSurface.hxx".}
proc constructIGESToBRep_TopoSurface*(eps: Standard_Real; epsGeom: Standard_Real;
                                     epsCoeff: Standard_Real;
                                     mode: Standard_Boolean;
                                     modeapprox: Standard_Boolean;
                                     optimized: Standard_Boolean): IGESToBRep_TopoSurface {.
    constructor, importcpp: "IGESToBRep_TopoSurface(@)",
    header: "IGESToBRep_TopoSurface.hxx".}
proc TransferTopoSurface*(this: var IGESToBRep_TopoSurface;
                         start: handle[IGESData_IGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferTopoBasicSurface*(this: var IGESToBRep_TopoSurface;
                              start: handle[IGESData_IGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoBasicSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferRuledSurface*(this: var IGESToBRep_TopoSurface;
                          start: handle[IGESGeom_RuledSurface]): TopoDS_Shape {.
    importcpp: "TransferRuledSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferSurfaceOfRevolution*(this: var IGESToBRep_TopoSurface;
                                 start: handle[IGESGeom_SurfaceOfRevolution]): TopoDS_Shape {.
    importcpp: "TransferSurfaceOfRevolution", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferTabulatedCylinder*(this: var IGESToBRep_TopoSurface;
                               start: handle[IGESGeom_TabulatedCylinder]): TopoDS_Shape {.
    importcpp: "TransferTabulatedCylinder", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferOffsetSurface*(this: var IGESToBRep_TopoSurface;
                           start: handle[IGESGeom_OffsetSurface]): TopoDS_Shape {.
    importcpp: "TransferOffsetSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferTrimmedSurface*(this: var IGESToBRep_TopoSurface;
                            start: handle[IGESGeom_TrimmedSurface]): TopoDS_Shape {.
    importcpp: "TransferTrimmedSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferBoundedSurface*(this: var IGESToBRep_TopoSurface;
                            start: handle[IGESGeom_BoundedSurface]): TopoDS_Shape {.
    importcpp: "TransferBoundedSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferPlane*(this: var IGESToBRep_TopoSurface; start: handle[IGESGeom_Plane]): TopoDS_Shape {.
    importcpp: "TransferPlane", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferPlaneSurface*(this: var IGESToBRep_TopoSurface;
                          start: handle[IGESSolid_PlaneSurface]): TopoDS_Shape {.
    importcpp: "TransferPlaneSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc TransferPerforate*(this: var IGESToBRep_TopoSurface;
                       start: handle[IGESBasic_SingleParent]): TopoDS_Shape {.
    importcpp: "TransferPerforate", header: "IGESToBRep_TopoSurface.hxx".}
proc ParamSurface*(this: var IGESToBRep_TopoSurface;
                  start: handle[IGESData_IGESEntity]; trans: var gp_Trsf2d;
                  uFact: var Standard_Real): TopoDS_Shape {.
    importcpp: "ParamSurface", header: "IGESToBRep_TopoSurface.hxx".}