##  Created on: 1994-11-17
##  Created by: Marie Jose MARTZ
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
  ../Standard/Standard_Boolean, GeomToIGES_GeomEntity

discard "forward decl of GeomToIGES_GeomEntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_BoundedSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_RectangularTrimmedSurface"
discard "forward decl of Geom_ElementarySurface"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_CylindricalSurface"
discard "forward decl of Geom_ConicalSurface"
discard "forward decl of Geom_SphericalSurface"
discard "forward decl of Geom_ToroidalSurface"
discard "forward decl of Geom_SweptSurface"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
discard "forward decl of Geom_SurfaceOfRevolution"
discard "forward decl of Geom_OffsetSurface"
type
  GeomToIGES_GeomSurface* {.importcpp: "GeomToIGES_GeomSurface",
                           header: "GeomToIGES_GeomSurface.hxx", bycopy.} = object of GeomToIGES_GeomEntity


proc constructGeomToIGES_GeomSurface*(): GeomToIGES_GeomSurface {.constructor,
    importcpp: "GeomToIGES_GeomSurface(@)", header: "GeomToIGES_GeomSurface.hxx".}
proc constructGeomToIGES_GeomSurface*(GE: GeomToIGES_GeomEntity): GeomToIGES_GeomSurface {.
    constructor, importcpp: "GeomToIGES_GeomSurface(@)",
    header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface; start: handle[Geom_Surface];
                     Udeb: Standard_Real; Ufin: Standard_Real; Vdeb: Standard_Real;
                     Vfin: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_BoundedSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_BSplineSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_BezierSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_RectangularTrimmedSurface];
                     Udeb: Standard_Real; Ufin: Standard_Real; Vdeb: Standard_Real;
                     Vfin: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_ElementarySurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface; start: handle[Geom_Plane];
                     Udeb: Standard_Real; Ufin: Standard_Real; Vdeb: Standard_Real;
                     Vfin: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_CylindricalSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_ConicalSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_SphericalSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_ToroidalSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_SweptSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_SurfaceOfLinearExtrusion];
                     Udeb: Standard_Real; Ufin: Standard_Real; Vdeb: Standard_Real;
                     Vfin: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_SurfaceOfRevolution]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSurface*(this: var GeomToIGES_GeomSurface;
                     start: handle[Geom_OffsetSurface]; Udeb: Standard_Real;
                     Ufin: Standard_Real; Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferPlaneSurface*(this: var GeomToIGES_GeomSurface;
                          start: handle[Geom_Plane]; Udeb: Standard_Real;
                          Ufin: Standard_Real; Vdeb: Standard_Real;
                          Vfin: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferPlaneSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc TransferCylindricalSurface*(this: var GeomToIGES_GeomSurface;
                                start: handle[Geom_CylindricalSurface];
                                Udeb: Standard_Real; Ufin: Standard_Real;
                                Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferCylindricalSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferConicalSurface*(this: var GeomToIGES_GeomSurface;
                            start: handle[Geom_ConicalSurface];
                            Udeb: Standard_Real; Ufin: Standard_Real;
                            Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferConicalSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferSphericalSurface*(this: var GeomToIGES_GeomSurface;
                              start: handle[Geom_SphericalSurface];
                              Udeb: Standard_Real; Ufin: Standard_Real;
                              Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSphericalSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc TransferToroidalSurface*(this: var GeomToIGES_GeomSurface;
                             start: handle[Geom_ToroidalSurface];
                             Udeb: Standard_Real; Ufin: Standard_Real;
                             Vdeb: Standard_Real; Vfin: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferToroidalSurface",
                          header: "GeomToIGES_GeomSurface.hxx".}
proc Length*(this: GeomToIGES_GeomSurface): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "GeomToIGES_GeomSurface.hxx".}
proc GetBRepMode*(this: GeomToIGES_GeomSurface): Standard_Boolean {.noSideEffect,
    importcpp: "GetBRepMode", header: "GeomToIGES_GeomSurface.hxx".}
proc SetBRepMode*(this: var GeomToIGES_GeomSurface; flag: Standard_Boolean) {.
    importcpp: "SetBRepMode", header: "GeomToIGES_GeomSurface.hxx".}
proc GetAnalyticMode*(this: GeomToIGES_GeomSurface): Standard_Boolean {.
    noSideEffect, importcpp: "GetAnalyticMode",
    header: "GeomToIGES_GeomSurface.hxx".}
proc SetAnalyticMode*(this: var GeomToIGES_GeomSurface; flag: Standard_Boolean) {.
    importcpp: "SetAnalyticMode", header: "GeomToIGES_GeomSurface.hxx".}