##  Created on: 2004-11-22
##  Created by: Pavel TELKOV
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
##  The original implementation Copyright: (C) RINA S.p.A

discard "forward decl of TObj_Model"
type
  TObjAssistant* {.importcpp: "TObj_Assistant", header: "TObj_Assistant.hxx", bycopy.} = object ## *
                                                                                        ##  Interface for DataMap of Modeller name
                                                                                        ##
                                                                                        ## ! Finds model by name
                                                                                        ## *
                                                                                        ##  Interface for Map of Standard Types
                                                                                        ##
                                                                                        ## ! Finds Standard_Type by index;
                                                                                        ## ! returns NULL handle if not found
                                                                                        ## *
                                                                                        ##  Interface to the current model
                                                                                        ##
                                                                                        ## ! Sets current model
                                                                                        ## ! Returns the version of application which wrote the currently read document.
                                                                                        ## ! Returns 0 if it has not been set yet for the current document.
                                                                                        ## ! Method for taking fields for map of models


proc findModel*(theName: StandardCString): Handle[TObjModel] {.
    importcpp: "TObj_Assistant::FindModel(@)", header: "TObj_Assistant.hxx".}
proc bindModel*(theModel: Handle[TObjModel]) {.
    importcpp: "TObj_Assistant::BindModel(@)", header: "TObj_Assistant.hxx".}
proc clearModelMap*() {.importcpp: "TObj_Assistant::ClearModelMap(@)",
                      header: "TObj_Assistant.hxx".}
proc findType*(theTypeIndex: int): Handle[StandardType] {.
    importcpp: "TObj_Assistant::FindType(@)", header: "TObj_Assistant.hxx".}
proc findTypeIndex*(theType: Handle[StandardType]): int {.
    importcpp: "TObj_Assistant::FindTypeIndex(@)", header: "TObj_Assistant.hxx".}
proc bindType*(theType: Handle[StandardType]): int {.
    importcpp: "TObj_Assistant::BindType(@)", header: "TObj_Assistant.hxx".}
proc clearTypeMap*() {.importcpp: "TObj_Assistant::ClearTypeMap(@)",
                     header: "TObj_Assistant.hxx".}
proc setCurrentModel*(theModel: Handle[TObjModel]) {.
    importcpp: "TObj_Assistant::SetCurrentModel(@)", header: "TObj_Assistant.hxx".}
proc getCurrentModel*(): Handle[TObjModel] {.
    importcpp: "TObj_Assistant::GetCurrentModel(@)", header: "TObj_Assistant.hxx".}
proc unSetCurrentModel*() {.importcpp: "TObj_Assistant::UnSetCurrentModel(@)",
                          header: "TObj_Assistant.hxx".}
proc getAppVersion*(): int {.importcpp: "TObj_Assistant::GetAppVersion(@)",
                          header: "TObj_Assistant.hxx".}
# when defined(_MSC_VER):
#   discard
