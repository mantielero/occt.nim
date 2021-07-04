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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TDocStd/TDocStd_Application,
  ../TColStd/TColStd_SequenceOfExtendedString, ../Standard/Standard_CString

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFApp_Application"
discard "forward decl of XCAFApp_Application"
type
  Handle_XCAFApp_Application* = handle[XCAFApp_Application]

## ! Implements an Application for the DECAF documents

type
  XCAFApp_Application* {.importcpp: "XCAFApp_Application",
                        header: "XCAFApp_Application.hxx", bycopy.} = object of TDocStd_Application ##
                                                                                             ## !
                                                                                             ## methods
                                                                                             ## from
                                                                                             ## TDocStd_Application
                                                                                             ##
                                                                                             ## !
                                                                                             ## ================================


proc ResourcesName*(this: var XCAFApp_Application): Standard_CString {.
    importcpp: "ResourcesName", header: "XCAFApp_Application.hxx".}
proc InitDocument*(this: XCAFApp_Application; aDoc: handle[TDocStd_Document]) {.
    noSideEffect, importcpp: "InitDocument", header: "XCAFApp_Application.hxx".}
proc GetApplication*(): handle[XCAFApp_Application] {.
    importcpp: "XCAFApp_Application::GetApplication(@)",
    header: "XCAFApp_Application.hxx".}
proc DumpJson*(this: XCAFApp_Application; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFApp_Application.hxx".}
type
  XCAFApp_Applicationbase_type* = TDocStd_Application

proc get_type_name*(): cstring {.importcpp: "XCAFApp_Application::get_type_name(@)",
                              header: "XCAFApp_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFApp_Application::get_type_descriptor(@)",
    header: "XCAFApp_Application.hxx".}
proc DynamicType*(this: XCAFApp_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFApp_Application.hxx".}