##  Created on: 2004-11-23
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
  TObj_Common

discard "forward decl of TObj_Object"
type
  TObj_ObjectIterator* {.importcpp: "TObj_ObjectIterator",
                        header: "TObj_ObjectIterator.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ##
                                                                                            ## Methods
                                                                                            ## to
                                                                                            ## iterate
                                                                                            ## on
                                                                                            ## a
                                                                                            ## objects
                                                                                            ##
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## True
                                                                                            ## if
                                                                                            ## iteration
                                                                                            ## is
                                                                                            ## not
                                                                                            ## finished
                                                                                            ## and
                                                                                            ## method
                                                                                            ## Current()
                                                                                            ##
                                                                                            ## !
                                                                                            ## will
                                                                                            ## give
                                                                                            ## the
                                                                                            ## object.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Default
                                                                                            ## implementation
                                                                                            ## returns
                                                                                            ## False
                                                                                            ##
                                                                                            ## !
                                                                                            ## CASCADE
                                                                                            ## RTTI


proc More*(this: TObj_ObjectIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TObj_ObjectIterator.hxx".}
proc Next*(this: var TObj_ObjectIterator) {.importcpp: "Next",
                                        header: "TObj_ObjectIterator.hxx".}
proc Value*(this: TObj_ObjectIterator): handle[TObj_Object] {.noSideEffect,
    importcpp: "Value", header: "TObj_ObjectIterator.hxx".}
type
  TObj_ObjectIteratorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TObj_ObjectIterator::get_type_name(@)",
                              header: "TObj_ObjectIterator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_ObjectIterator::get_type_descriptor(@)",
    header: "TObj_ObjectIterator.hxx".}
proc DynamicType*(this: TObj_ObjectIterator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_ObjectIterator.hxx".}
## ! Define handle class for TObj_ObjectIterator

discard "forward decl of TObj_ObjectIterator"
type
  Handle_TObj_ObjectIterator* = handle[TObj_ObjectIterator]

when defined(_MSC_VER):
  discard