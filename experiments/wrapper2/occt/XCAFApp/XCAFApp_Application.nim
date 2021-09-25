##  Created on: 2000-05-24
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFApp_Application"
discard "forward decl of XCAFApp_Application"
type
  HandleXCAFAppApplication* = Handle[XCAFAppApplication]

## ! Implements an Application for the DECAF documents

type
  XCAFAppApplication* {.importcpp: "XCAFApp_Application",
                       header: "XCAFApp_Application.hxx", bycopy.} = object of TDocStdApplication ##
                                                                                           ## !
                                                                                           ## methods
                                                                                           ## from
                                                                                           ## TDocStd_Application
                                                                                           ##
                                                                                           ## !
                                                                                           ## ================================


proc resourcesName*(this: var XCAFAppApplication): StandardCString {.
    importcpp: "ResourcesName", header: "XCAFApp_Application.hxx".}
proc initDocument*(this: XCAFAppApplication; aDoc: Handle[TDocStdDocument]) {.
    noSideEffect, importcpp: "InitDocument", header: "XCAFApp_Application.hxx".}
proc getApplication*(): Handle[XCAFAppApplication] {.
    importcpp: "XCAFApp_Application::GetApplication(@)",
    header: "XCAFApp_Application.hxx".}
proc dumpJson*(this: XCAFAppApplication; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFApp_Application.hxx".}
type
  XCAFAppApplicationbaseType* = TDocStdApplication

proc getTypeName*(): cstring {.importcpp: "XCAFApp_Application::get_type_name(@)",
                            header: "XCAFApp_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFApp_Application::get_type_descriptor(@)",
    header: "XCAFApp_Application.hxx".}
proc dynamicType*(this: XCAFAppApplication): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFApp_Application.hxx".}
