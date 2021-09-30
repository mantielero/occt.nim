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


proc `new`*(this: var GeomToIGES_GeomSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToIGES_GeomSurface::operator new",
    header: "GeomToIGES_GeomSurface.hxx".}
proc `delete`*(this: var GeomToIGES_GeomSurface; theAddress: pointer) {.
    importcpp: "GeomToIGES_GeomSurface::operator delete",
    header: "GeomToIGES_GeomSurface.hxx".}
proc `new[]`*(this: var GeomToIGES_GeomSurface; theSize: csize_t): pointer {.
    importcpp: "GeomToIGES_GeomSurface::operator new[]",
    header: "GeomToIGES_GeomSurface.hxx".}
proc `delete[]`*(this: var GeomToIGES_GeomSurface; theAddress: pointer) {.
    importcpp: "GeomToIGES_GeomSurface::operator delete[]",
    header: "GeomToIGES_GeomSurface.hxx".}
proc `new`*(this: var GeomToIGES_GeomSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToIGES_GeomSurface::operator new",
    header: "GeomToIGES_GeomSurface.hxx".}
proc `delete`*(this: var GeomToIGES_GeomSurface; a2: pointer; a3: pointer) {.
    importcpp: "GeomToIGES_GeomSurface::operator delete",
    header: "GeomToIGES_GeomSurface.hxx".}
proc constructGeomToIGES_GeomSurface*(): GeomToIGES_GeomSurface {.constructor,
    importcpp: "GeomToIGES_GeomSurface(@)", header: "GeomToIGES_GeomSurface.hxx".}
proc constructGeomToIGES_GeomSurface*(ge: GeomToIGES_GeomEntity): GeomToIGES_GeomSurface {.
    constructor, importcpp: "GeomToIGES_GeomSurface(@)",
    header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface; start: Handle[GeomSurface];
                     udeb: StandardReal; ufin: StandardReal; vdeb: StandardReal;
                     vfin: StandardReal): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomBoundedSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomBSplineSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomBezierSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomRectangularTrimmedSurface];
                     udeb: StandardReal; ufin: StandardReal; vdeb: StandardReal;
                     vfin: StandardReal): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomElementarySurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface; start: Handle[GeomPlane];
                     udeb: StandardReal; ufin: StandardReal; vdeb: StandardReal;
                     vfin: StandardReal): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomCylindricalSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomConicalSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomSphericalSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomToroidalSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomSweptSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomSurfaceOfLinearExtrusion];
                     udeb: StandardReal; ufin: StandardReal; vdeb: StandardReal;
                     vfin: StandardReal): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomSurfaceOfRevolution]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferSurface*(this: var GeomToIGES_GeomSurface;
                     start: Handle[GeomOffsetSurface]; udeb: StandardReal;
                     ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferPlaneSurface*(this: var GeomToIGES_GeomSurface;
                          start: Handle[GeomPlane]; udeb: StandardReal;
                          ufin: StandardReal; vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferPlaneSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferCylindricalSurface*(this: var GeomToIGES_GeomSurface;
                                start: Handle[GeomCylindricalSurface];
                                udeb: StandardReal; ufin: StandardReal;
                                vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCylindricalSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferConicalSurface*(this: var GeomToIGES_GeomSurface;
                            start: Handle[GeomConicalSurface]; udeb: StandardReal;
                            ufin: StandardReal; vdeb: StandardReal;
                            vfin: StandardReal): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferConicalSurface", header: "GeomToIGES_GeomSurface.hxx".}
proc transferSphericalSurface*(this: var GeomToIGES_GeomSurface;
                              start: Handle[GeomSphericalSurface];
                              udeb: StandardReal; ufin: StandardReal;
                              vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferSphericalSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc transferToroidalSurface*(this: var GeomToIGES_GeomSurface;
                             start: Handle[GeomToroidalSurface];
                             udeb: StandardReal; ufin: StandardReal;
                             vdeb: StandardReal; vfin: StandardReal): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferToroidalSurface",
                         header: "GeomToIGES_GeomSurface.hxx".}
proc length*(this: GeomToIGES_GeomSurface): StandardReal {.noSideEffect,
    importcpp: "Length", header: "GeomToIGES_GeomSurface.hxx".}
proc getBRepMode*(this: GeomToIGES_GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "GetBRepMode", header: "GeomToIGES_GeomSurface.hxx".}
proc setBRepMode*(this: var GeomToIGES_GeomSurface; flag: StandardBoolean) {.
    importcpp: "SetBRepMode", header: "GeomToIGES_GeomSurface.hxx".}
proc getAnalyticMode*(this: GeomToIGES_GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "GetAnalyticMode", header: "GeomToIGES_GeomSurface.hxx".}
proc setAnalyticMode*(this: var GeomToIGES_GeomSurface; flag: StandardBoolean) {.
    importcpp: "SetAnalyticMode", header: "GeomToIGES_GeomSurface.hxx".}