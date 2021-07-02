##  Created on: 2000-09-07
##  Created by: TURIN  Anatoliy <ati@nnov.matra-dtv.fr>
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

discard "forward decl of AppStd_Application"
discard "forward decl of AppStd_Application"
type
  HandleAppStdApplication* = Handle[AppStdApplication]

## ! Legacy class defining resources name for standard OCAF documents

type
  AppStdApplication* {.importcpp: "AppStd_Application",
                      header: "AppStd_Application.hxx", bycopy.} = object of TDocStdApplication ##
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


proc resourcesName*(this: var AppStdApplication): StandardCString {.
    importcpp: "ResourcesName", header: "AppStd_Application.hxx".}
proc dumpJson*(this: AppStdApplication; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AppStd_Application.hxx".}
type
  AppStdApplicationbaseType* = TDocStdApplication

proc getTypeName*(): cstring {.importcpp: "AppStd_Application::get_type_name(@)",
                            header: "AppStd_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppStd_Application::get_type_descriptor(@)",
    header: "AppStd_Application.hxx".}
proc dynamicType*(this: AppStdApplication): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AppStd_Application.hxx".}

