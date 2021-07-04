##  Created on: 2004-06-29
##  Created by: Eugeny NAPALKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of AppStdL_Application"
discard "forward decl of AppStdL_Application"
type
  Handle_AppStdL_Application* = handle[AppStdL_Application]

## ! Legacy class defining resources name for lite OCAF documents

type
  AppStdL_Application* {.importcpp: "AppStdL_Application",
                        header: "AppStdL_Application.hxx", bycopy.} = object of TDocStd_Application ##
                                                                                             ## !
                                                                                             ## returns
                                                                                             ## the
                                                                                             ## file
                                                                                             ## name
                                                                                             ## which
                                                                                             ## contains
                                                                                             ## application
                                                                                             ##
                                                                                             ## !
                                                                                             ## resources


proc ResourcesName*(this: var AppStdL_Application): Standard_CString {.
    importcpp: "ResourcesName", header: "AppStdL_Application.hxx".}
proc DumpJson*(this: AppStdL_Application; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AppStdL_Application.hxx".}
type
  AppStdL_Applicationbase_type* = TDocStd_Application

proc get_type_name*(): cstring {.importcpp: "AppStdL_Application::get_type_name(@)",
                              header: "AppStdL_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AppStdL_Application::get_type_descriptor(@)",
    header: "AppStdL_Application.hxx".}
proc DynamicType*(this: AppStdL_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AppStdL_Application.hxx".}