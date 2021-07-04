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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Ax1,
  ../Standard/Standard_Real, ../GeomAdaptor/GeomAdaptor_Curve,
  ../Extrema/Extrema_ExtPC, ../gp/gp_Pnt

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of Geom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Geometry"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
type
  GeomFill_SectionPlacement* {.importcpp: "GeomFill_SectionPlacement",
                              header: "GeomFill_SectionPlacement.hxx", bycopy.} = object


proc constructGeomFill_SectionPlacement*(L: handle[GeomFill_LocationLaw];
                                        Section: handle[Geom_Geometry]): GeomFill_SectionPlacement {.
    constructor, importcpp: "GeomFill_SectionPlacement(@)",
    header: "GeomFill_SectionPlacement.hxx".}
proc SetLocation*(this: var GeomFill_SectionPlacement;
                 L: handle[GeomFill_LocationLaw]) {.importcpp: "SetLocation",
    header: "GeomFill_SectionPlacement.hxx".}
proc Perform*(this: var GeomFill_SectionPlacement; Tol: Standard_Real) {.
    importcpp: "Perform", header: "GeomFill_SectionPlacement.hxx".}
proc Perform*(this: var GeomFill_SectionPlacement; Path: handle[Adaptor3d_HCurve];
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "GeomFill_SectionPlacement.hxx".}
proc Perform*(this: var GeomFill_SectionPlacement; ParamOnPath: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "GeomFill_SectionPlacement.hxx".}
proc IsDone*(this: GeomFill_SectionPlacement): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_SectionPlacement.hxx".}
proc ParameterOnPath*(this: GeomFill_SectionPlacement): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnPath",
    header: "GeomFill_SectionPlacement.hxx".}
proc ParameterOnSection*(this: GeomFill_SectionPlacement): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnSection",
    header: "GeomFill_SectionPlacement.hxx".}
proc Distance*(this: GeomFill_SectionPlacement): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "GeomFill_SectionPlacement.hxx".}
proc Angle*(this: GeomFill_SectionPlacement): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "GeomFill_SectionPlacement.hxx".}
proc Transformation*(this: GeomFill_SectionPlacement;
                    WithTranslation: Standard_Boolean;
                    WithCorrection: Standard_Boolean = Standard_False): gp_Trsf {.
    noSideEffect, importcpp: "Transformation",
    header: "GeomFill_SectionPlacement.hxx".}
proc Section*(this: GeomFill_SectionPlacement; WithTranslation: Standard_Boolean): handle[
    Geom_Curve] {.noSideEffect, importcpp: "Section",
                 header: "GeomFill_SectionPlacement.hxx".}
proc ModifiedSection*(this: GeomFill_SectionPlacement;
                     WithTranslation: Standard_Boolean): handle[Geom_Curve] {.
    noSideEffect, importcpp: "ModifiedSection",
    header: "GeomFill_SectionPlacement.hxx".}