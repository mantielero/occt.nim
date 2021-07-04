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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IGESToBRep_CurveAndSurface,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

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
  IGESToBRep_BasicSurface* {.importcpp: "IGESToBRep_BasicSurface",
                            header: "IGESToBRep_BasicSurface.hxx", bycopy.} = object of IGESToBRep_CurveAndSurface ##
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


proc constructIGESToBRep_BasicSurface*(): IGESToBRep_BasicSurface {.constructor,
    importcpp: "IGESToBRep_BasicSurface(@)", header: "IGESToBRep_BasicSurface.hxx".}
proc constructIGESToBRep_BasicSurface*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_BasicSurface {.
    constructor, importcpp: "IGESToBRep_BasicSurface(@)",
    header: "IGESToBRep_BasicSurface.hxx".}
proc constructIGESToBRep_BasicSurface*(eps: Standard_Real; epsGeom: Standard_Real;
                                      epsCoeff: Standard_Real;
                                      mode: Standard_Boolean;
                                      modeapprox: Standard_Boolean;
                                      optimized: Standard_Boolean): IGESToBRep_BasicSurface {.
    constructor, importcpp: "IGESToBRep_BasicSurface(@)",
    header: "IGESToBRep_BasicSurface.hxx".}
proc TransferBasicSurface*(this: var IGESToBRep_BasicSurface;
                          start: handle[IGESData_IGESEntity]): handle[Geom_Surface] {.
    importcpp: "TransferBasicSurface", header: "IGESToBRep_BasicSurface.hxx".}
proc TransferPlaneSurface*(this: var IGESToBRep_BasicSurface;
                          start: handle[IGESSolid_PlaneSurface]): handle[
    Geom_Plane] {.importcpp: "TransferPlaneSurface",
                 header: "IGESToBRep_BasicSurface.hxx".}
proc TransferRigthCylindricalSurface*(this: var IGESToBRep_BasicSurface; start: handle[
    IGESSolid_CylindricalSurface]): handle[Geom_CylindricalSurface] {.
    importcpp: "TransferRigthCylindricalSurface",
    header: "IGESToBRep_BasicSurface.hxx".}
proc TransferRigthConicalSurface*(this: var IGESToBRep_BasicSurface;
                                 start: handle[IGESSolid_ConicalSurface]): handle[
    Geom_ConicalSurface] {.importcpp: "TransferRigthConicalSurface",
                          header: "IGESToBRep_BasicSurface.hxx".}
proc TransferSphericalSurface*(this: var IGESToBRep_BasicSurface;
                              start: handle[IGESSolid_SphericalSurface]): handle[
    Geom_SphericalSurface] {.importcpp: "TransferSphericalSurface",
                            header: "IGESToBRep_BasicSurface.hxx".}
proc TransferToroidalSurface*(this: var IGESToBRep_BasicSurface;
                             start: handle[IGESSolid_ToroidalSurface]): handle[
    Geom_ToroidalSurface] {.importcpp: "TransferToroidalSurface",
                           header: "IGESToBRep_BasicSurface.hxx".}
proc TransferSplineSurface*(this: var IGESToBRep_BasicSurface;
                           start: handle[IGESGeom_SplineSurface]): handle[
    Geom_BSplineSurface] {.importcpp: "TransferSplineSurface",
                          header: "IGESToBRep_BasicSurface.hxx".}
proc TransferBSplineSurface*(this: var IGESToBRep_BasicSurface;
                            start: handle[IGESGeom_BSplineSurface]): handle[
    Geom_BSplineSurface] {.importcpp: "TransferBSplineSurface",
                          header: "IGESToBRep_BasicSurface.hxx".}