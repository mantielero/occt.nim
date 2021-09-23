##  Created on: 1995-04-20
##  Created by: Tony GEORGIADES
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString,
  Resource_DataMapOfAsciiStringAsciiString,
  Resource_DataMapOfAsciiStringExtendedString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_ExtString

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Resource_NoSuchResource"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Resource_Manager"
discard "forward decl of Resource_Manager"
type
  Handle_Resource_Manager* = handle[Resource_Manager]

## ! Defines a resource structure and its management methods.

type
  Resource_Manager* {.importcpp: "Resource_Manager",
                     header: "Resource_Manager.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Create
                                                                                      ## a
                                                                                      ## Resource
                                                                                      ## manager.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Attempts
                                                                                      ## to
                                                                                      ## find
                                                                                      ## the
                                                                                      ## two
                                                                                      ## following
                                                                                      ## files:
                                                                                      ##
                                                                                      ## !
                                                                                      ## $CSF_`aName`Defaults/aName
                                                                                      ##
                                                                                      ## !
                                                                                      ## $CSF_`aName`UserDefaults/aName
                                                                                      ##
                                                                                      ## !
                                                                                      ## and
                                                                                      ## load
                                                                                      ## them
                                                                                      ## respectively
                                                                                      ## into
                                                                                      ## a
                                                                                      ## reference
                                                                                      ## and
                                                                                      ## a
                                                                                      ## user
                                                                                      ## resource
                                                                                      ## structure.
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## CSF_ResourceVerbose
                                                                                      ## defined,
                                                                                      ## seeked
                                                                                      ## files
                                                                                      ## will
                                                                                      ## be
                                                                                      ## printed.
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## FILE
                                                                                      ## SYNTAX
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## syntax
                                                                                      ## of
                                                                                      ## a
                                                                                      ## resource
                                                                                      ## file
                                                                                      ## is
                                                                                      ## a
                                                                                      ## sequence
                                                                                      ## of
                                                                                      ## resource
                                                                                      ##
                                                                                      ## !
                                                                                      ## lines
                                                                                      ## terminated
                                                                                      ## by
                                                                                      ## newline
                                                                                      ## characters
                                                                                      ## or
                                                                                      ## end
                                                                                      ## of
                                                                                      ## file.
                                                                                      ## The
                                                                                      ##
                                                                                      ## !
                                                                                      ## syntax
                                                                                      ## of
                                                                                      ## an
                                                                                      ## individual
                                                                                      ## resource
                                                                                      ## line
                                                                                      ## is:

  Resource_Managerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Resource_Manager::get_type_name(@)",
                              header: "Resource_Manager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Resource_Manager::get_type_descriptor(@)",
    header: "Resource_Manager.hxx".}
proc DynamicType*(this: Resource_Manager): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Resource_Manager.hxx".}
proc constructResource_Manager*(aName: Standard_CString;
                               Verbose: Standard_Boolean = Standard_False): Resource_Manager {.
    constructor, importcpp: "Resource_Manager(@)", header: "Resource_Manager.hxx".}
proc constructResource_Manager*(theName: TCollection_AsciiString;
                               theDefaultsDirectory: TCollection_AsciiString;
    theUserDefaultsDirectory: TCollection_AsciiString;
                               theIsVerbose: Standard_Boolean = Standard_False): Resource_Manager {.
    constructor, importcpp: "Resource_Manager(@)", header: "Resource_Manager.hxx".}
proc Save*(this: Resource_Manager): Standard_Boolean {.noSideEffect,
    importcpp: "Save", header: "Resource_Manager.hxx".}
proc Find*(this: Resource_Manager; aResource: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Find", header: "Resource_Manager.hxx".}
proc Find*(this: Resource_Manager; theResource: TCollection_AsciiString;
          theValue: var TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "Find", header: "Resource_Manager.hxx".}
proc Integer*(this: Resource_Manager; aResourceName: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Integer", header: "Resource_Manager.hxx".}
proc Real*(this: Resource_Manager; aResourceName: Standard_CString): Standard_Real {.
    noSideEffect, importcpp: "Real", header: "Resource_Manager.hxx".}
proc Value*(this: Resource_Manager; aResourceName: Standard_CString): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "Resource_Manager.hxx".}
proc ExtValue*(this: var Resource_Manager; aResourceName: Standard_CString): Standard_ExtString {.
    importcpp: "ExtValue", header: "Resource_Manager.hxx".}
proc SetResource*(this: var Resource_Manager; aResourceName: Standard_CString;
                 aValue: Standard_Integer) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc SetResource*(this: var Resource_Manager; aResourceName: Standard_CString;
                 aValue: Standard_Real) {.importcpp: "SetResource",
                                        header: "Resource_Manager.hxx".}
proc SetResource*(this: var Resource_Manager; aResourceName: Standard_CString;
                 aValue: Standard_CString) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc SetResource*(this: var Resource_Manager; aResourceName: Standard_CString;
                 aValue: Standard_ExtString) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc GetResourcePath*(aPath: var TCollection_AsciiString; aName: Standard_CString;
                     isUserDefaults: Standard_Boolean) {.
    importcpp: "Resource_Manager::GetResourcePath(@)",
    header: "Resource_Manager.hxx".}