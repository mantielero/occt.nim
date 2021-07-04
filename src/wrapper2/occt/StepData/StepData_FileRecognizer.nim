##  Created on: 1992-02-11
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StepData_FileRecognizer"
discard "forward decl of StepData_FileRecognizer"
type
  Handle_StepData_FileRecognizer* = handle[StepData_FileRecognizer]
  StepData_FileRecognizer* {.importcpp: "StepData_FileRecognizer",
                            header: "StepData_FileRecognizer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Evaluates
                                                                                                    ## if
                                                                                                    ## recognition
                                                                                                    ## has
                                                                                                    ## a
                                                                                                    ## result,
                                                                                                    ## returns
                                                                                                    ## it
                                                                                                    ## if
                                                                                                    ## yes
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## In
                                                                                                    ## case
                                                                                                    ## of
                                                                                                    ## success,
                                                                                                    ## Returns
                                                                                                    ## True
                                                                                                    ## and
                                                                                                    ## puts
                                                                                                    ## result
                                                                                                    ## in
                                                                                                    ## "res"
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## In
                                                                                                    ## case
                                                                                                    ## of
                                                                                                    ## Failure,
                                                                                                    ## simply
                                                                                                    ## Returns
                                                                                                    ## False
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Works
                                                                                                    ## by
                                                                                                    ## calling
                                                                                                    ## deferred
                                                                                                    ## method
                                                                                                    ## Eval,
                                                                                                    ## and
                                                                                                    ## in
                                                                                                    ## case
                                                                                                    ## of
                                                                                                    ## failure,
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## looks
                                                                                                    ## for
                                                                                                    ## Added
                                                                                                    ## Recognizers
                                                                                                    ## to
                                                                                                    ## work
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Assumes
                                                                                                    ## that
                                                                                                    ## no
                                                                                                    ## result
                                                                                                    ## has
                                                                                                    ## yet
                                                                                                    ## been
                                                                                                    ## recognized


proc Evaluate*(this: var StepData_FileRecognizer; akey: TCollection_AsciiString;
              res: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Evaluate", header: "StepData_FileRecognizer.hxx".}
proc Result*(this: StepData_FileRecognizer): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Result", header: "StepData_FileRecognizer.hxx".}
proc Add*(this: var StepData_FileRecognizer; reco: handle[StepData_FileRecognizer]) {.
    importcpp: "Add", header: "StepData_FileRecognizer.hxx".}
type
  StepData_FileRecognizerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_FileRecognizer::get_type_name(@)",
                              header: "StepData_FileRecognizer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_FileRecognizer::get_type_descriptor(@)",
    header: "StepData_FileRecognizer.hxx".}
proc DynamicType*(this: StepData_FileRecognizer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_FileRecognizer.hxx".}