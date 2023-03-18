import resource_types
import ../tcollection/tcollection_types
import ../standard/standard_types




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





proc newResourceManager*(aName: cstring; verbose: bool = false): ResourceManager {.
    cdecl, constructor, importcpp: "Resource_Manager(@)",
    header: "Resource_Manager.hxx".}
proc newResourceManager*(theName: TCollectionAsciiString;
                        theDefaultsDirectory: TCollectionAsciiString;
                        theUserDefaultsDirectory: TCollectionAsciiString;
                        theIsVerbose: bool = false): ResourceManager {.cdecl,
    constructor, importcpp: "Resource_Manager(@)", header: "Resource_Manager.hxx".}
proc save*(this: ResourceManager): bool {.noSideEffect, cdecl, importcpp: "Save",
                                      header: "Resource_Manager.hxx".}
proc find*(this: ResourceManager; aResource: cstring): bool {.noSideEffect, cdecl,
    importcpp: "Find", header: "Resource_Manager.hxx".}
proc find*(this: ResourceManager; theResource: TCollectionAsciiString;
          theValue: var TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "Find", header: "Resource_Manager.hxx".}
proc integer*(this: ResourceManager; aResourceName: cstring): cint {.noSideEffect,
    cdecl, importcpp: "Integer", header: "Resource_Manager.hxx".}
proc real*(this: ResourceManager; aResourceName: cstring): cfloat {.noSideEffect,
    cdecl, importcpp: "Real", header: "Resource_Manager.hxx".}
proc value*(this: ResourceManager; aResourceName: cstring): cstring {.noSideEffect,
    cdecl, importcpp: "Value", header: "Resource_Manager.hxx".}
proc extValue*(this: var ResourceManager; aResourceName: cstring): StandardExtString {.
    cdecl, importcpp: "ExtValue", header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: cstring; aValue: cint) {.
    cdecl, importcpp: "SetResource", header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: cstring; aValue: cfloat) {.
    cdecl, importcpp: "SetResource", header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: cstring; aValue: cstring) {.
    cdecl, importcpp: "SetResource", header: "Resource_Manager.hxx".}
proc setResource*(this: var ResourceManager; aResourceName: cstring;
                 aValue: StandardExtString) {.cdecl, importcpp: "SetResource",
    header: "Resource_Manager.hxx".}
proc getResourcePath*(aPath: var TCollectionAsciiString; aName: cstring;
                     isUserDefaults: bool) {.cdecl,
    importcpp: "Resource_Manager::GetResourcePath(@)",
    header: "Resource_Manager.hxx".}


