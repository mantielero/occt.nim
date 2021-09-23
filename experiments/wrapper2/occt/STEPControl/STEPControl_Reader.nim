##  Created on: 1996-07-08
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
  ../Standard/Standard_Handle, ../XSControl/XSControl_Reader,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_Array1OfAsciiString, ../TColStd/TColStd_Array1OfReal

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepRepr_RepresentationContext"
type
  STEPControl_Reader* {.importcpp: "STEPControl_Reader",
                       header: "STEPControl_Reader.hxx", bycopy.} = object of XSControl_Reader ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## reader
                                                                                        ## object
                                                                                        ## with
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## STEP
                                                                                        ## model.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## units
                                                                                        ## for
                                                                                        ## length
                                                                                        ## ,
                                                                                        ## angle
                                                                                        ## and
                                                                                        ## solidangle
                                                                                        ## for
                                                                                        ## shape
                                                                                        ## representations


proc constructSTEPControl_Reader*(): STEPControl_Reader {.constructor,
    importcpp: "STEPControl_Reader(@)", header: "STEPControl_Reader.hxx".}
proc constructSTEPControl_Reader*(WS: handle[XSControl_WorkSession];
                                 scratch: Standard_Boolean = Standard_True): STEPControl_Reader {.
    constructor, importcpp: "STEPControl_Reader(@)",
    header: "STEPControl_Reader.hxx".}
proc StepModel*(this: STEPControl_Reader): handle[StepData_StepModel] {.
    noSideEffect, importcpp: "StepModel", header: "STEPControl_Reader.hxx".}
proc TransferRoot*(this: var STEPControl_Reader; num: Standard_Integer = 1;
                  theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "TransferRoot", header: "STEPControl_Reader.hxx".}
proc NbRootsForTransfer*(this: var STEPControl_Reader): Standard_Integer {.
    importcpp: "NbRootsForTransfer", header: "STEPControl_Reader.hxx".}
proc FileUnits*(this: var STEPControl_Reader;
               theUnitLengthNames: var TColStd_SequenceOfAsciiString;
               theUnitAngleNames: var TColStd_SequenceOfAsciiString;
               theUnitSolidAngleNames: var TColStd_SequenceOfAsciiString) {.
    importcpp: "FileUnits", header: "STEPControl_Reader.hxx".}