##  Created on: 1999-03-22
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPSelections_SelectGSCurves"
discard "forward decl of STEPSelections_SelectGSCurves"
type
  HandleSTEPSelectionsSelectGSCurves* = Handle[STEPSelectionsSelectGSCurves]

## ! This selection returns "curves in the geometric_set (except composite curves)"

type
  STEPSelectionsSelectGSCurves* {.importcpp: "STEPSelections_SelectGSCurves",
                                 header: "STEPSelections_SelectGSCurves.hxx",
                                 bycopy.} = object of IFSelectSelectExplore


proc constructSTEPSelectionsSelectGSCurves*(): STEPSelectionsSelectGSCurves {.
    constructor, importcpp: "STEPSelections_SelectGSCurves(@)",
    header: "STEPSelections_SelectGSCurves.hxx".}
proc explore*(this: STEPSelectionsSelectGSCurves; level: int;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect,
    importcpp: "Explore", header: "STEPSelections_SelectGSCurves.hxx".}
proc exploreLabel*(this: STEPSelectionsSelectGSCurves): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "STEPSelections_SelectGSCurves.hxx".}
type
  STEPSelectionsSelectGSCurvesbaseType* = IFSelectSelectExplore

proc getTypeName*(): cstring {.importcpp: "STEPSelections_SelectGSCurves::get_type_name(@)",
                            header: "STEPSelections_SelectGSCurves.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPSelections_SelectGSCurves::get_type_descriptor(@)",
    header: "STEPSelections_SelectGSCurves.hxx".}
proc dynamicType*(this: STEPSelectionsSelectGSCurves): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectGSCurves.hxx".}
