##  Created on: 1993-07-28
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfTransient,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_WorkSession"
discard "forward decl of IFSelect_Dispatch"
type
  IFSelect_Functions* {.importcpp: "IFSelect_Functions",
                       header: "IFSelect_Functions.hxx", bycopy.} = object ## ! Takes the name of an entity, either as argument, or (if <name>
                                                                      ## ! is empty) on keybord, and returns the entity
                                                                      ## ! name can be a label or a number (in
                                                                      ## alphanumeric), it is
                                                                      ## ! searched by
                                                                      ## NumberFromLabel from
                                                                      ## WorkSession.
                                                                      ## ! If <name> doesn't match en entity, a Null Handle is returned


proc GiveEntity*(WS: handle[IFSelect_WorkSession]; name: Standard_CString = ""): handle[
    Standard_Transient] {.importcpp: "IFSelect_Functions::GiveEntity(@)",
                         header: "IFSelect_Functions.hxx".}
proc GiveEntityNumber*(WS: handle[IFSelect_WorkSession];
                      name: Standard_CString = ""): Standard_Integer {.
    importcpp: "IFSelect_Functions::GiveEntityNumber(@)",
    header: "IFSelect_Functions.hxx".}
proc GiveList*(WS: handle[IFSelect_WorkSession]; first: Standard_CString = "";
              second: Standard_CString = ""): handle[TColStd_HSequenceOfTransient] {.
    importcpp: "IFSelect_Functions::GiveList(@)", header: "IFSelect_Functions.hxx".}
proc GiveDispatch*(WS: handle[IFSelect_WorkSession]; name: Standard_CString;
                  mode: Standard_Boolean = Standard_True): handle[IFSelect_Dispatch] {.
    importcpp: "IFSelect_Functions::GiveDispatch(@)",
    header: "IFSelect_Functions.hxx".}
proc Init*() {.importcpp: "IFSelect_Functions::Init(@)",
             header: "IFSelect_Functions.hxx".}