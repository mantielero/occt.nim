##  Created on: 1992-04-06
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_FileRecognizer"
discard "forward decl of IGESData_FileRecognizer"
type
  HandleIGESDataFileRecognizer* = Handle[IGESDataFileRecognizer]
  IGESDataFileRecognizer* {.importcpp: "IGESData_FileRecognizer",
                           header: "IGESData_FileRecognizer.hxx", bycopy.} = object of StandardTransient ##
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


proc evaluate*(this: var IGESDataFileRecognizer; akey: IGESDataIGESType;
              res: var Handle[IGESDataIGESEntity]): StandardBoolean {.
    importcpp: "Evaluate", header: "IGESData_FileRecognizer.hxx".}
proc result*(this: IGESDataFileRecognizer): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Result", header: "IGESData_FileRecognizer.hxx".}
proc add*(this: var IGESDataFileRecognizer; reco: Handle[IGESDataFileRecognizer]) {.
    importcpp: "Add", header: "IGESData_FileRecognizer.hxx".}
type
  IGESDataFileRecognizerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_FileRecognizer::get_type_name(@)",
                            header: "IGESData_FileRecognizer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_FileRecognizer::get_type_descriptor(@)",
    header: "IGESData_FileRecognizer.hxx".}
proc dynamicType*(this: IGESDataFileRecognizer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_FileRecognizer.hxx".}

