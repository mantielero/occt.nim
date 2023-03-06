import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../geom/geom_types
import geomfill_types





##  Created on: 1997-12-15
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newGeomFillSectionPlacement*(L: Handle[GeomFillLocationLaw];
                                 section: Handle[GeomGeometry]): GeomFillSectionPlacement {.
    cdecl, constructor, importcpp: "GeomFill_SectionPlacement(@)",
    header: "GeomFill_SectionPlacement.hxx".}
proc setLocation*(this: var GeomFillSectionPlacement; L: Handle[GeomFillLocationLaw]) {.
    cdecl, importcpp: "SetLocation", header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; path: Handle[Adaptor3dHCurve];
             tol: cfloat) {.cdecl, importcpp: "Perform", header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; paramOnPath: cfloat; tol: cfloat) {.
    cdecl, importcpp: "Perform", header: "GeomFill_SectionPlacement.hxx".}
proc isDone*(this: GeomFillSectionPlacement): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "GeomFill_SectionPlacement.hxx".}
proc parameterOnPath*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnPath", header: "GeomFill_SectionPlacement.hxx".}
proc parameterOnSection*(this: GeomFillSectionPlacement): cfloat {.noSideEffect,
    cdecl, importcpp: "ParameterOnSection", header: "GeomFill_SectionPlacement.hxx".}
proc distance*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "GeomFill_SectionPlacement.hxx".}
proc angle*(this: GeomFillSectionPlacement): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "GeomFill_SectionPlacement.hxx".}
proc transformation*(this: GeomFillSectionPlacement; withTranslation: bool;
                    withCorrection: bool = false): gp_Trsf {.noSideEffect, cdecl,
    importcpp: "Transformation", header: "GeomFill_SectionPlacement.hxx".}
proc section*(this: GeomFillSectionPlacement; withTranslation: bool): Handle[
    GeomCurve] {.noSideEffect, cdecl, importcpp: "Section", header: "GeomFill_SectionPlacement.hxx".}
proc modifiedSection*(this: GeomFillSectionPlacement; withTranslation: bool): Handle[
    GeomCurve] {.noSideEffect, cdecl, importcpp: "ModifiedSection",
                header: "GeomFill_SectionPlacement.hxx".}


