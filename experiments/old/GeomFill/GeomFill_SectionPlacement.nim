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

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of Geom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Geometry"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
type
  GeomFillSectionPlacement* {.importcpp: "GeomFill_SectionPlacement",
                             header: "GeomFill_SectionPlacement.hxx", bycopy.} = object


proc `new`*(this: var GeomFillSectionPlacement; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SectionPlacement::operator new",
    header: "GeomFill_SectionPlacement.hxx".}
proc `delete`*(this: var GeomFillSectionPlacement; theAddress: pointer) {.
    importcpp: "GeomFill_SectionPlacement::operator delete",
    header: "GeomFill_SectionPlacement.hxx".}
proc `new[]`*(this: var GeomFillSectionPlacement; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SectionPlacement::operator new[]",
    header: "GeomFill_SectionPlacement.hxx".}
proc `delete[]`*(this: var GeomFillSectionPlacement; theAddress: pointer) {.
    importcpp: "GeomFill_SectionPlacement::operator delete[]",
    header: "GeomFill_SectionPlacement.hxx".}
proc `new`*(this: var GeomFillSectionPlacement; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_SectionPlacement::operator new",
    header: "GeomFill_SectionPlacement.hxx".}
proc `delete`*(this: var GeomFillSectionPlacement; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_SectionPlacement::operator delete",
    header: "GeomFill_SectionPlacement.hxx".}
proc constructGeomFillSectionPlacement*(L: Handle[GeomFillLocationLaw];
                                       section: Handle[GeomGeometry]): GeomFillSectionPlacement {.
    constructor, importcpp: "GeomFill_SectionPlacement(@)",
    header: "GeomFill_SectionPlacement.hxx".}
proc setLocation*(this: var GeomFillSectionPlacement; L: Handle[GeomFillLocationLaw]) {.
    importcpp: "SetLocation", header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; tol: StandardReal) {.
    importcpp: "Perform", header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; path: Handle[Adaptor3dHCurve];
             tol: StandardReal) {.importcpp: "Perform",
                                header: "GeomFill_SectionPlacement.hxx".}
proc perform*(this: var GeomFillSectionPlacement; paramOnPath: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "GeomFill_SectionPlacement.hxx".}
proc isDone*(this: GeomFillSectionPlacement): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_SectionPlacement.hxx".}
proc parameterOnPath*(this: GeomFillSectionPlacement): StandardReal {.noSideEffect,
    importcpp: "ParameterOnPath", header: "GeomFill_SectionPlacement.hxx".}
proc parameterOnSection*(this: GeomFillSectionPlacement): StandardReal {.
    noSideEffect, importcpp: "ParameterOnSection",
    header: "GeomFill_SectionPlacement.hxx".}
proc distance*(this: GeomFillSectionPlacement): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "GeomFill_SectionPlacement.hxx".}
proc angle*(this: GeomFillSectionPlacement): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "GeomFill_SectionPlacement.hxx".}
proc transformation*(this: GeomFillSectionPlacement;
                    withTranslation: StandardBoolean;
                    withCorrection: StandardBoolean = false): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "GeomFill_SectionPlacement.hxx".}
proc section*(this: GeomFillSectionPlacement; withTranslation: StandardBoolean): Handle[
    GeomCurve] {.noSideEffect, importcpp: "Section",
                header: "GeomFill_SectionPlacement.hxx".}
proc modifiedSection*(this: GeomFillSectionPlacement;
                     withTranslation: StandardBoolean): Handle[GeomCurve] {.
    noSideEffect, importcpp: "ModifiedSection",
    header: "GeomFill_SectionPlacement.hxx".}