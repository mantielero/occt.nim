##  Created on: 1999-07-19
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Label,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TDF/TDF_LabelList

discard "forward decl of TDF_Label"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_Driver"
type
  Handle_TFunction_Driver* = handle[TFunction_Driver]

## ! This  driver  class provide  services  around function
## ! execution.   One instance of  this class is  built for
## ! the whole  session.    The driver  is bound   to   the
## ! DriverGUID in the DriverTable class.
## ! It allows you to create classes which inherit from
## ! this abstract class.
## ! These subclasses identify the various algorithms
## ! which can be applied to the data contained in the
## ! attributes of sub-labels of a model.
## ! A single instance of this class and each of its
## ! subclasses is built for the whole session.

type
  TFunction_Driver* {.importcpp: "TFunction_Driver",
                     header: "TFunction_Driver.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Initializes
                                                                                      ## the
                                                                                      ## label
                                                                                      ## L
                                                                                      ## for
                                                                                      ## this
                                                                                      ## function
                                                                                      ## prior
                                                                                      ## to
                                                                                      ## its
                                                                                      ## execution.
                                                                                      ##
                                                                                      ## !
                                                                                      ## initialisation
                                                                                      ## of
                                                                                      ## the
                                                                                      ## driver
                                                                                      ##
                                                                                      ## !
                                                                                      ## ============================


proc Init*(this: var TFunction_Driver; L: TDF_Label) {.importcpp: "Init",
    header: "TFunction_Driver.hxx".}
proc Label*(this: TFunction_Driver): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TFunction_Driver.hxx".}
proc Validate*(this: TFunction_Driver; log: var handle[TFunction_Logbook]) {.
    noSideEffect, importcpp: "Validate", header: "TFunction_Driver.hxx".}
proc MustExecute*(this: TFunction_Driver; log: handle[TFunction_Logbook]): Standard_Boolean {.
    noSideEffect, importcpp: "MustExecute", header: "TFunction_Driver.hxx".}
proc Execute*(this: TFunction_Driver; log: var handle[TFunction_Logbook]): Standard_Integer {.
    noSideEffect, importcpp: "Execute", header: "TFunction_Driver.hxx".}
proc Arguments*(this: TFunction_Driver; args: var TDF_LabelList) {.noSideEffect,
    importcpp: "Arguments", header: "TFunction_Driver.hxx".}
proc Results*(this: TFunction_Driver; res: var TDF_LabelList) {.noSideEffect,
    importcpp: "Results", header: "TFunction_Driver.hxx".}
type
  TFunction_Driverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TFunction_Driver::get_type_name(@)",
                              header: "TFunction_Driver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TFunction_Driver::get_type_descriptor(@)",
    header: "TFunction_Driver.hxx".}
proc DynamicType*(this: TFunction_Driver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Driver.hxx".}