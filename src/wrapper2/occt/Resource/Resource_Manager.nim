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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Resource_NoSuchResource"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Resource_Manager"
discard "forward decl of Resource_Manager"
type
  HandleResourceManager* = Handle[ResourceManager]

## ! Defines a resource structure and its management methods.

type
  ResourceManager* {.importcpp: "Resource_Manager", header: "Resource_Manager.hxx",
                    bycopy.} = object of StandardTransient ## ! Create a Resource manager.
                                                      ## ! Attempts to find the two following files:
                                                      ## ! $CSF_`aName`Defaults/aName
                                                      ## !
                                                      ## $CSF_`aName`UserDefaults/aName
                                                      ## ! and load them respectively into a reference and a user resource structure.
                                                      ## !
                                                      ## ! If CSF_ResourceVerbose defined, seeked files will be printed.
                                                      ## !
                                                      ## ! FILE SYNTAX
                                                      ## ! The syntax of a resource file is a sequence of resource
                                                      ## ! lines terminated by newline characters or end of file.  The
                                                      ## ! syntax of an individual resource line is:

  ResourceManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Resource_Manager::get_type_name(@)",
                            header: "Resource_Manager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Resource_Manager::get_type_descriptor(@)",
    header: "Resource_Manager.hxx".}
proc dynamicType*(this: ResourceManager): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Resource_Manager.hxx".}
proc constructResourceManager*(aName: StandardCString;
                              verbose: StandardBoolean = standardFalse): ResourceManager {.
    constructor, importcpp: "Resource_Manager(@)", header: "Resource_Manager.hxx".}
proc constructResourceManager*(theName: TCollectionAsciiString;
                              theDefaultsDirectory: TCollectionAsciiString;
                              theUserDefaultsDirectory: TCollectionAsciiString;
                              theIsVerbose: StandardBoolean = standardFalse): ResourceManager {.
    constructor, importcpp: "Resource_Manager(@)", header: "Resource_Manager.hxx".}
proc save*(this: ResourceManager): StandardBoolean {.noSideEffect, importcpp: "Save",
    header: "Resource_Manager.hxx".}
proc find*(this: ResourceManager; aResource: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Find", header: "Resource_Manager.hxx".}
proc find*(this: ResourceManager; theResource: TCollectionAsciiString;
          theValue: var TCollectionAsciiString): StandardBoolean {.noSideEffect,
    importcpp: "Find", header: "Resource_Manager.hxx".}
proc integer*(this: ResourceManager; aResourceName: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "Integer", header: "Resource_Manager.hxx".}
proc real*(this: ResourceManager; aResourceName: StandardCString): StandardReal {.
    noSideEffect, importcpp: "Real", header: "Resource_Manager.hxx".}
proc value*(this: ResourceManager; aResourceName: StandardCString): StandardCString {.
    noSideEffect, importcpp: "Value", header: "Resource_Manager.hxx".}
proc extValue*(this: var ResourceManager; aResourceName: StandardCString): StandardExtString {.
    importcpp: "ExtValue", header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: StandardCString;
                 aValue: StandardInteger) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: StandardCString;
                 aValue: StandardReal) {.importcpp: "SetResource",
                                       header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: StandardCString;
                 aValue: StandardCString) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: StandardCString;
                 aValue: StandardExtString) {.importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc getResourcePath*(aPath: var TCollectionAsciiString; aName: StandardCString;
                     isUserDefaults: StandardBoolean) {.
    importcpp: "Resource_Manager::GetResourcePath(@)",
    header: "Resource_Manager.hxx".}

