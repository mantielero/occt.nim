##  Created on: 1998-10-15
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SignCounter,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_GraphCounter"
discard "forward decl of IFSelect_GraphCounter"
type
  Handle_IFSelect_GraphCounter* = handle[IFSelect_GraphCounter]

## ! A GraphCounter computes values to be sorted with the help of
## ! a Graph. I.E. not from a Signature
## !
## ! The default GraphCounter works with an Applied Selection (a
## ! SelectDeduct), the value is the count of selected entities
## ! from each input entities)

type
  IFSelect_GraphCounter* {.importcpp: "IFSelect_GraphCounter",
                          header: "IFSelect_GraphCounter.hxx", bycopy.} = object of IFSelect_SignCounter ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## GraphCounter,
                                                                                                  ## without
                                                                                                  ## applied
                                                                                                  ## selection


proc constructIFSelect_GraphCounter*(withmap: Standard_Boolean = Standard_True;
                                    withlist: Standard_Boolean = Standard_False): IFSelect_GraphCounter {.
    constructor, importcpp: "IFSelect_GraphCounter(@)",
    header: "IFSelect_GraphCounter.hxx".}
proc Applied*(this: IFSelect_GraphCounter): handle[IFSelect_SelectDeduct] {.
    noSideEffect, importcpp: "Applied", header: "IFSelect_GraphCounter.hxx".}
proc SetApplied*(this: var IFSelect_GraphCounter; sel: handle[IFSelect_SelectDeduct]) {.
    importcpp: "SetApplied", header: "IFSelect_GraphCounter.hxx".}
proc AddWithGraph*(this: var IFSelect_GraphCounter;
                  list: handle[TColStd_HSequenceOfTransient];
                  graph: Interface_Graph) {.importcpp: "AddWithGraph",
    header: "IFSelect_GraphCounter.hxx".}
type
  IFSelect_GraphCounterbase_type* = IFSelect_SignCounter

proc get_type_name*(): cstring {.importcpp: "IFSelect_GraphCounter::get_type_name(@)",
                              header: "IFSelect_GraphCounter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_GraphCounter::get_type_descriptor(@)",
    header: "IFSelect_GraphCounter.hxx".}
proc DynamicType*(this: IFSelect_GraphCounter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_GraphCounter.hxx".}