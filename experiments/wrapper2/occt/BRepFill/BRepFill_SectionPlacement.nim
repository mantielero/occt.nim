##  Created on: 1998-02-11
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Trsf"
type
  BRepFillSectionPlacement* {.importcpp: "BRepFill_SectionPlacement",
                             header: "BRepFill_SectionPlacement.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Automatic
                                                                                   ## placement


proc constructBRepFillSectionPlacement*(law: Handle[BRepFillLocationLaw];
                                       section: TopoDS_Shape;
                                       withContact: bool = false;
                                       withCorrection: bool = false): BRepFillSectionPlacement {.
    constructor, importcpp: "BRepFill_SectionPlacement(@)",
    header: "BRepFill_SectionPlacement.hxx".}
proc constructBRepFillSectionPlacement*(law: Handle[BRepFillLocationLaw];
                                       section: TopoDS_Shape;
                                       vertex: TopoDS_Shape;
                                       withContact: bool = false;
                                       withCorrection: bool = false): BRepFillSectionPlacement {.
    constructor, importcpp: "BRepFill_SectionPlacement(@)",
    header: "BRepFill_SectionPlacement.hxx".}
proc transformation*(this: BRepFillSectionPlacement): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "BRepFill_SectionPlacement.hxx".}
proc abscissaOnPath*(this: var BRepFillSectionPlacement): cfloat {.
    importcpp: "AbscissaOnPath", header: "BRepFill_SectionPlacement.hxx".}

























