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

import
  TObj_Common, ../TColStd/TColStd_SequenceOfTransient,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_IndexedMapOfTransient

discard "forward decl of TObj_Model"
type
  TObj_Assistant* {.importcpp: "TObj_Assistant", header: "TObj_Assistant.hxx", bycopy.} = object ## *
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


proc FindModel*(theName: Standard_CString): handle[TObj_Model] {.
    importcpp: "TObj_Assistant::FindModel(@)", header: "TObj_Assistant.hxx".}
proc BindModel*(theModel: handle[TObj_Model]) {.
    importcpp: "TObj_Assistant::BindModel(@)", header: "TObj_Assistant.hxx".}
proc ClearModelMap*() {.importcpp: "TObj_Assistant::ClearModelMap(@)",
                      header: "TObj_Assistant.hxx".}
proc FindType*(theTypeIndex: Standard_Integer): handle[Standard_Type] {.
    importcpp: "TObj_Assistant::FindType(@)", header: "TObj_Assistant.hxx".}
proc FindTypeIndex*(theType: handle[Standard_Type]): Standard_Integer {.
    importcpp: "TObj_Assistant::FindTypeIndex(@)", header: "TObj_Assistant.hxx".}
proc BindType*(theType: handle[Standard_Type]): Standard_Integer {.
    importcpp: "TObj_Assistant::BindType(@)", header: "TObj_Assistant.hxx".}
proc ClearTypeMap*() {.importcpp: "TObj_Assistant::ClearTypeMap(@)",
                     header: "TObj_Assistant.hxx".}
proc SetCurrentModel*(theModel: handle[TObj_Model]) {.
    importcpp: "TObj_Assistant::SetCurrentModel(@)", header: "TObj_Assistant.hxx".}
proc GetCurrentModel*(): handle[TObj_Model] {.
    importcpp: "TObj_Assistant::GetCurrentModel(@)", header: "TObj_Assistant.hxx".}
proc UnSetCurrentModel*() {.importcpp: "TObj_Assistant::UnSetCurrentModel(@)",
                          header: "TObj_Assistant.hxx".}
proc GetAppVersion*(): Standard_Integer {.importcpp: "TObj_Assistant::GetAppVersion(@)",
                                       header: "TObj_Assistant.hxx".}
when defined(_MSC_VER):
  discard