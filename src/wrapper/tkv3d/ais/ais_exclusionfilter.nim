##  Created on: 1997-11-28
##  Created by: Robert COUBLANC
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_ExclusionFilter"
type
  HandleAIS_ExclusionFilter* = Handle[AIS_ExclusionFilter]

## ! A framework to reject or to accept only objects of
## ! given types and/or signatures.
## ! Objects are stored, and the stored objects - along
## ! with the flag settings - are used to define the filter.
## ! Objects to be filtered are compared with the stored
## ! objects added to the filter, and are accepted or
## ! rejected according to the exclusion flag setting.
## ! -   Exclusion flag on
## ! -   the function IsOk answers true for all objects,
## ! except those of the types and signatures stored
## ! in the filter framework
## ! -   Exclusion flag off
## ! -   the funciton IsOk answers true for all objects
## ! which have the same type and signature as the stored ones.

type
  AIS_ExclusionFilter* {.importcpp: "AIS_ExclusionFilter",
                        header: "AIS_ExclusionFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## exclusion
                                                                                         ## filter
                                                                                         ## object
                                                                                         ## defined
                                                                                         ## by
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## setting
                                                                                         ## ExclusionFlagOn.
                                                                                         ##
                                                                                         ## !
                                                                                         ## By
                                                                                         ## default,
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## is
                                                                                         ## set
                                                                                         ## to
                                                                                         ## true.


proc newAIS_ExclusionFilter*(exclusionFlagOn: bool = true): AIS_ExclusionFilter {.
    cdecl, constructor, importcpp: "AIS_ExclusionFilter(@)", header: "AIS_ExclusionFilter.hxx".}
proc newAIS_ExclusionFilter*(typeToExclude: AIS_KindOfInteractive;
                            exclusionFlagOn: bool = true): AIS_ExclusionFilter {.
    cdecl, constructor, importcpp: "AIS_ExclusionFilter(@)", header: "AIS_ExclusionFilter.hxx".}
proc newAIS_ExclusionFilter*(typeToExclude: AIS_KindOfInteractive;
                            signatureInType: cint; exclusionFlagOn: bool = true): AIS_ExclusionFilter {.
    cdecl, constructor, importcpp: "AIS_ExclusionFilter(@)", header: "AIS_ExclusionFilter.hxx".}
proc isOk*(this: AIS_ExclusionFilter; anObj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_ExclusionFilter.hxx".}
proc add*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive): bool {.
    cdecl, importcpp: "Add", header: "AIS_ExclusionFilter.hxx".}
proc add*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive;
         signatureInType: cint): bool {.cdecl, importcpp: "Add", header: "AIS_ExclusionFilter.hxx".}
proc remove*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive): bool {.
    cdecl, importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc remove*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive;
            signatureInType: cint): bool {.cdecl, importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc clear*(this: var AIS_ExclusionFilter) {.cdecl, importcpp: "Clear", header: "AIS_ExclusionFilter.hxx".}
proc isExclusionFlagOn*(this: AIS_ExclusionFilter): bool {.noSideEffect, cdecl,
    importcpp: "IsExclusionFlagOn", header: "AIS_ExclusionFilter.hxx".}
proc setExclusionFlag*(this: var AIS_ExclusionFilter; status: bool) {.cdecl,
    importcpp: "SetExclusionFlag", header: "AIS_ExclusionFilter.hxx".}
proc isStored*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive): bool {.
    noSideEffect, cdecl, importcpp: "IsStored", header: "AIS_ExclusionFilter.hxx".}
proc listOfStoredTypes*(this: AIS_ExclusionFilter;
                       theList: var TColStdListOfInteger) {.noSideEffect, cdecl,
    importcpp: "ListOfStoredTypes", header: "AIS_ExclusionFilter.hxx".}
proc listOfSignature*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive;
                     theStoredList: var TColStdListOfInteger) {.noSideEffect, cdecl,
    importcpp: "ListOfSignature", header: "AIS_ExclusionFilter.hxx".}