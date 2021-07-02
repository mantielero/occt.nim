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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of IGESData_IGESModel"
type
  IGESControlReader* {.importcpp: "IGESControl_Reader",
                      header: "IGESControl_Reader.hxx", bycopy.} = object of XSControlReader ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## Reader
                                                                                      ## from
                                                                                      ## scratch


proc constructIGESControlReader*(): IGESControlReader {.constructor,
    importcpp: "IGESControl_Reader(@)", header: "IGESControl_Reader.hxx".}
proc constructIGESControlReader*(ws: Handle[XSControlWorkSession];
                                scratch: StandardBoolean = standardTrue): IGESControlReader {.
    constructor, importcpp: "IGESControl_Reader(@)",
    header: "IGESControl_Reader.hxx".}
proc setReadVisible*(this: var IGESControlReader; readRoot: StandardBoolean) {.
    importcpp: "SetReadVisible", header: "IGESControl_Reader.hxx".}
proc getReadVisible*(this: IGESControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetReadVisible", header: "IGESControl_Reader.hxx".}
proc iGESModel*(this: IGESControlReader): Handle[IGESDataIGESModel] {.noSideEffect,
    importcpp: "IGESModel", header: "IGESControl_Reader.hxx".}
proc nbRootsForTransfer*(this: var IGESControlReader): StandardInteger {.
    importcpp: "NbRootsForTransfer", header: "IGESControl_Reader.hxx".}
proc printTransferInfo*(this: IGESControlReader; failwarn: IFSelectPrintFail;
                       mode: IFSelectPrintCount) {.noSideEffect,
    importcpp: "PrintTransferInfo", header: "IGESControl_Reader.hxx".}

