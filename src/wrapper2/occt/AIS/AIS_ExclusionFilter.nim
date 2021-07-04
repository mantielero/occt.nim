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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_DataMapOfIntegerListOfInteger,
  ../SelectMgr/SelectMgr_Filter, AIS_KindOfInteractive,
  ../Standard/Standard_Integer, ../TColStd/TColStd_ListOfInteger

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_ExclusionFilter"
discard "forward decl of AIS_ExclusionFilter"
type
  Handle_AIS_ExclusionFilter* = handle[AIS_ExclusionFilter]

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
                        header: "AIS_ExclusionFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
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


proc constructAIS_ExclusionFilter*(ExclusionFlagOn: Standard_Boolean = Standard_True): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc constructAIS_ExclusionFilter*(TypeToExclude: AIS_KindOfInteractive;
    ExclusionFlagOn: Standard_Boolean = Standard_True): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc constructAIS_ExclusionFilter*(TypeToExclude: AIS_KindOfInteractive;
                                  SignatureInType: Standard_Integer;
    ExclusionFlagOn: Standard_Boolean = Standard_True): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc IsOk*(this: AIS_ExclusionFilter; anObj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "AIS_ExclusionFilter.hxx".}
proc Add*(this: var AIS_ExclusionFilter; TypeToExclude: AIS_KindOfInteractive): Standard_Boolean {.
    importcpp: "Add", header: "AIS_ExclusionFilter.hxx".}
proc Add*(this: var AIS_ExclusionFilter; TypeToExclude: AIS_KindOfInteractive;
         SignatureInType: Standard_Integer): Standard_Boolean {.importcpp: "Add",
    header: "AIS_ExclusionFilter.hxx".}
proc Remove*(this: var AIS_ExclusionFilter; TypeToExclude: AIS_KindOfInteractive): Standard_Boolean {.
    importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc Remove*(this: var AIS_ExclusionFilter; TypeToExclude: AIS_KindOfInteractive;
            SignatureInType: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc Clear*(this: var AIS_ExclusionFilter) {.importcpp: "Clear",
    header: "AIS_ExclusionFilter.hxx".}
proc IsExclusionFlagOn*(this: AIS_ExclusionFilter): Standard_Boolean {.noSideEffect,
    importcpp: "IsExclusionFlagOn", header: "AIS_ExclusionFilter.hxx".}
proc SetExclusionFlag*(this: var AIS_ExclusionFilter; Status: Standard_Boolean) {.
    importcpp: "SetExclusionFlag", header: "AIS_ExclusionFilter.hxx".}
proc IsStored*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive): Standard_Boolean {.
    noSideEffect, importcpp: "IsStored", header: "AIS_ExclusionFilter.hxx".}
proc ListOfStoredTypes*(this: AIS_ExclusionFilter;
                       TheList: var TColStd_ListOfInteger) {.noSideEffect,
    importcpp: "ListOfStoredTypes", header: "AIS_ExclusionFilter.hxx".}
proc ListOfSignature*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive;
                     TheStoredList: var TColStd_ListOfInteger) {.noSideEffect,
    importcpp: "ListOfSignature", header: "AIS_ExclusionFilter.hxx".}
type
  AIS_ExclusionFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "AIS_ExclusionFilter::get_type_name(@)",
                              header: "AIS_ExclusionFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ExclusionFilter::get_type_descriptor(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc DynamicType*(this: AIS_ExclusionFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ExclusionFilter.hxx".}