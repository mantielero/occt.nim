##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../SelectMgr/SelectMgr_EntityOwner, ../SelectMgr/SelectMgr_SelectableObject,
  ../Prs3d/Prs3d_DatumParts

## ! Entity owner for selection management of AIS_Trihedron object.

type
  AIS_TrihedronOwner* {.importcpp: "AIS_TrihedronOwner",
                       header: "AIS_TrihedronOwner.hxx", bycopy.} = object of SelectMgr_EntityOwner ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## an
                                                                                             ## owner
                                                                                             ## of
                                                                                             ## AIS_Trihedron
                                                                                             ## object.
    ## !< part of datum selected

  AIS_TrihedronOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "AIS_TrihedronOwner::get_type_name(@)",
                              header: "AIS_TrihedronOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_TrihedronOwner::get_type_descriptor(@)",
    header: "AIS_TrihedronOwner.hxx".}
proc DynamicType*(this: AIS_TrihedronOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TrihedronOwner.hxx".}
proc constructAIS_TrihedronOwner*(theSelObject: handle[SelectMgr_SelectableObject];
                                 theDatumPart: Prs3d_DatumParts;
                                 thePriority: Standard_Integer): AIS_TrihedronOwner {.
    constructor, importcpp: "AIS_TrihedronOwner(@)",
    header: "AIS_TrihedronOwner.hxx".}
proc DatumPart*(this: AIS_TrihedronOwner): Prs3d_DatumParts {.noSideEffect,
    importcpp: "DatumPart", header: "AIS_TrihedronOwner.hxx".}
proc HilightWithColor*(this: var AIS_TrihedronOwner;
                      thePM: handle[PrsMgr_PresentationManager3d];
                      theStyle: handle[Prs3d_Drawer]; theMode: Standard_Integer) {.
    importcpp: "HilightWithColor", header: "AIS_TrihedronOwner.hxx".}
proc IsHilighted*(this: AIS_TrihedronOwner;
                 thePM: handle[PrsMgr_PresentationManager];
                 theMode: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_TrihedronOwner.hxx".}
proc Unhilight*(this: var AIS_TrihedronOwner;
               thePM: handle[PrsMgr_PresentationManager];
               theMode: Standard_Integer) {.importcpp: "Unhilight",
    header: "AIS_TrihedronOwner.hxx".}
discard "forward decl of AIS_TrihedronOwner"
type
  Handle_AIS_TrihedronOwner* = handle[AIS_TrihedronOwner]
