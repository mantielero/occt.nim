##  Created on: 1994-03-14
##  Created by: Frederic UNTEREINER
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
discard "forward decl of Geom_Surface"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Geom_Plane"
discard "forward decl of IGESSolid_PlaneSurface"
discard "forward decl of Geom_CylindricalSurface"
discard "forward decl of IGESSolid_CylindricalSurface"
discard "forward decl of Geom_ConicalSurface"
discard "forward decl of IGESSolid_ConicalSurface"
discard "forward decl of Geom_SphericalSurface"
discard "forward decl of IGESSolid_SphericalSurface"
discard "forward decl of Geom_ToroidalSurface"
discard "forward decl of IGESSolid_ToroidalSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of IGESGeom_SplineSurface"
discard "forward decl of IGESGeom_BSplineSurface"
type
  IGESToBRepBasicSurface* {.importcpp: "IGESToBRep_BasicSurface",
                           header: "IGESToBRep_BasicSurface.hxx", bycopy.} = object of IGESToBRepCurveAndSurface ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## tool
                                                                                                          ## BasicSurface
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


proc constructIGESToBRepBasicSurface*(): IGESToBRepBasicSurface {.constructor,
    importcpp: "IGESToBRep_BasicSurface(@)", header: "IGESToBRep_BasicSurface.hxx".}
proc constructIGESToBRepBasicSurface*(cs: IGESToBRepCurveAndSurface): IGESToBRepBasicSurface {.
    constructor, importcpp: "IGESToBRep_BasicSurface(@)",
    header: "IGESToBRep_BasicSurface.hxx".}
proc constructIGESToBRepBasicSurface*(eps: float; epsGeom: float; epsCoeff: float;
                                     mode: bool; modeapprox: bool; optimized: bool): IGESToBRepBasicSurface {.
    constructor, importcpp: "IGESToBRep_BasicSurface(@)",
    header: "IGESToBRep_BasicSurface.hxx".}
proc transferBasicSurface*(this: var IGESToBRepBasicSurface;
                          start: Handle[IGESDataIGESEntity]): Handle[GeomSurface] {.
    importcpp: "TransferBasicSurface", header: "IGESToBRep_BasicSurface.hxx".}
proc transferPlaneSurface*(this: var IGESToBRepBasicSurface;
                          start: Handle[IGESSolidPlaneSurface]): Handle[GeomPlane] {.
    importcpp: "TransferPlaneSurface", header: "IGESToBRep_BasicSurface.hxx".}
proc transferRigthCylindricalSurface*(this: var IGESToBRepBasicSurface;
                                     start: Handle[IGESSolidCylindricalSurface]): Handle[
    GeomCylindricalSurface] {.importcpp: "TransferRigthCylindricalSurface",
                             header: "IGESToBRep_BasicSurface.hxx".}
proc transferRigthConicalSurface*(this: var IGESToBRepBasicSurface;
                                 start: Handle[IGESSolidConicalSurface]): Handle[
    GeomConicalSurface] {.importcpp: "TransferRigthConicalSurface",
                         header: "IGESToBRep_BasicSurface.hxx".}
proc transferSphericalSurface*(this: var IGESToBRepBasicSurface;
                              start: Handle[IGESSolidSphericalSurface]): Handle[
    GeomSphericalSurface] {.importcpp: "TransferSphericalSurface",
                           header: "IGESToBRep_BasicSurface.hxx".}
proc transferToroidalSurface*(this: var IGESToBRepBasicSurface;
                             start: Handle[IGESSolidToroidalSurface]): Handle[
    GeomToroidalSurface] {.importcpp: "TransferToroidalSurface",
                          header: "IGESToBRep_BasicSurface.hxx".}
proc transferSplineSurface*(this: var IGESToBRepBasicSurface;
                           start: Handle[IGESGeomSplineSurface]): Handle[
    GeomBSplineSurface] {.importcpp: "TransferSplineSurface",
                         header: "IGESToBRep_BasicSurface.hxx".}
proc transferBSplineSurface*(this: var IGESToBRepBasicSurface;
                            start: Handle[IGESGeomBSplineSurface]): Handle[
    GeomBSplineSurface] {.importcpp: "TransferBSplineSurface",
                         header: "IGESToBRep_BasicSurface.hxx".}
