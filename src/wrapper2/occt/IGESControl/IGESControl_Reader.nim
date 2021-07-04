##  Created on: 1996-09-06
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../XSControl/XSControl_Reader, ../Standard/Standard_Integer,
  ../IFSelect/IFSelect_PrintFail, ../IFSelect/IFSelect_PrintCount

discard "forward decl of XSControl_WorkSession"
discard "forward decl of IGESData_IGESModel"
type
  IGESControl_Reader* {.importcpp: "IGESControl_Reader",
                       header: "IGESControl_Reader.hxx", bycopy.} = object of XSControl_Reader ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## Reader
                                                                                        ## from
                                                                                        ## scratch


proc constructIGESControl_Reader*(): IGESControl_Reader {.constructor,
    importcpp: "IGESControl_Reader(@)", header: "IGESControl_Reader.hxx".}
proc constructIGESControl_Reader*(WS: handle[XSControl_WorkSession];
                                 scratch: Standard_Boolean = Standard_True): IGESControl_Reader {.
    constructor, importcpp: "IGESControl_Reader(@)",
    header: "IGESControl_Reader.hxx".}
proc SetReadVisible*(this: var IGESControl_Reader; ReadRoot: Standard_Boolean) {.
    importcpp: "SetReadVisible", header: "IGESControl_Reader.hxx".}
proc GetReadVisible*(this: IGESControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetReadVisible", header: "IGESControl_Reader.hxx".}
proc IGESModel*(this: IGESControl_Reader): handle[IGESData_IGESModel] {.
    noSideEffect, importcpp: "IGESModel", header: "IGESControl_Reader.hxx".}
proc NbRootsForTransfer*(this: var IGESControl_Reader): Standard_Integer {.
    importcpp: "NbRootsForTransfer", header: "IGESControl_Reader.hxx".}
proc PrintTransferInfo*(this: IGESControl_Reader; failwarn: IFSelect_PrintFail;
                       mode: IFSelect_PrintCount) {.noSideEffect,
    importcpp: "PrintTransferInfo", header: "IGESControl_Reader.hxx".}