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

discard "forward decl of AppStdL_Application"
discard "forward decl of AppStdL_Application"
type
  HandleAppStdL_Application* = Handle[AppStdL_Application]

## ! Legacy class defining resources name for lite OCAF documents

type
  AppStdL_Application* {.importcpp: "AppStdL_Application",
                        header: "AppStdL_Application.hxx", bycopy.} = object of TDocStdApplication ##
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


proc resourcesName*(this: var AppStdL_Application): StandardCString {.
    importcpp: "ResourcesName", header: "AppStdL_Application.hxx".}
proc dumpJson*(this: AppStdL_Application; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AppStdL_Application.hxx".}
type
  AppStdL_ApplicationbaseType* = TDocStdApplication

proc getTypeName*(): cstring {.importcpp: "AppStdL_Application::get_type_name(@)",
                            header: "AppStdL_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppStdL_Application::get_type_descriptor(@)",
    header: "AppStdL_Application.hxx".}
proc dynamicType*(this: AppStdL_Application): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AppStdL_Application.hxx".}

