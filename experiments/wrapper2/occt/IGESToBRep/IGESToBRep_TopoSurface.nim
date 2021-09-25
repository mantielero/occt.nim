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
  IGESToBRepTopoSurface* {.importcpp: "IGESToBRep_TopoSurface",
                          header: "IGESToBRep_TopoSurface.hxx", bycopy.} = object of IGESToBRepCurveAndSurface ##
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


proc constructIGESToBRepTopoSurface*(): IGESToBRepTopoSurface {.constructor,
    importcpp: "IGESToBRep_TopoSurface(@)", header: "IGESToBRep_TopoSurface.hxx".}
proc constructIGESToBRepTopoSurface*(cs: IGESToBRepCurveAndSurface): IGESToBRepTopoSurface {.
    constructor, importcpp: "IGESToBRep_TopoSurface(@)",
    header: "IGESToBRep_TopoSurface.hxx".}
proc constructIGESToBRepTopoSurface*(eps: float; epsGeom: float; epsCoeff: float;
                                    mode: bool; modeapprox: bool; optimized: bool): IGESToBRepTopoSurface {.
    constructor, importcpp: "IGESToBRep_TopoSurface(@)",
    header: "IGESToBRep_TopoSurface.hxx".}
proc transferTopoSurface*(this: var IGESToBRepTopoSurface;
                         start: Handle[IGESDataIGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferTopoBasicSurface*(this: var IGESToBRepTopoSurface;
                              start: Handle[IGESDataIGESEntity]): TopoDS_Shape {.
    importcpp: "TransferTopoBasicSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferRuledSurface*(this: var IGESToBRepTopoSurface;
                          start: Handle[IGESGeomRuledSurface]): TopoDS_Shape {.
    importcpp: "TransferRuledSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferSurfaceOfRevolution*(this: var IGESToBRepTopoSurface;
                                 start: Handle[IGESGeomSurfaceOfRevolution]): TopoDS_Shape {.
    importcpp: "TransferSurfaceOfRevolution", header: "IGESToBRep_TopoSurface.hxx".}
proc transferTabulatedCylinder*(this: var IGESToBRepTopoSurface;
                               start: Handle[IGESGeomTabulatedCylinder]): TopoDS_Shape {.
    importcpp: "TransferTabulatedCylinder", header: "IGESToBRep_TopoSurface.hxx".}
proc transferOffsetSurface*(this: var IGESToBRepTopoSurface;
                           start: Handle[IGESGeomOffsetSurface]): TopoDS_Shape {.
    importcpp: "TransferOffsetSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferTrimmedSurface*(this: var IGESToBRepTopoSurface;
                            start: Handle[IGESGeomTrimmedSurface]): TopoDS_Shape {.
    importcpp: "TransferTrimmedSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferBoundedSurface*(this: var IGESToBRepTopoSurface;
                            start: Handle[IGESGeomBoundedSurface]): TopoDS_Shape {.
    importcpp: "TransferBoundedSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferPlane*(this: var IGESToBRepTopoSurface; start: Handle[IGESGeomPlane]): TopoDS_Shape {.
    importcpp: "TransferPlane", header: "IGESToBRep_TopoSurface.hxx".}
proc transferPlaneSurface*(this: var IGESToBRepTopoSurface;
                          start: Handle[IGESSolidPlaneSurface]): TopoDS_Shape {.
    importcpp: "TransferPlaneSurface", header: "IGESToBRep_TopoSurface.hxx".}
proc transferPerforate*(this: var IGESToBRepTopoSurface;
                       start: Handle[IGESBasicSingleParent]): TopoDS_Shape {.
    importcpp: "TransferPerforate", header: "IGESToBRep_TopoSurface.hxx".}
proc paramSurface*(this: var IGESToBRepTopoSurface;
                  start: Handle[IGESDataIGESEntity]; trans: var Trsf2d;
                  uFact: var float): TopoDS_Shape {.importcpp: "ParamSurface",
    header: "IGESToBRep_TopoSurface.hxx".}
