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
  TObj_LabelIterator

## *
##  This class provides an iterator by objects in a partition.
##  (implements TObj_ObjectIterator interface)
##

type
  TObj_OcafObjectIterator* {.importcpp: "TObj_OcafObjectIterator",
                            header: "TObj_OcafObjectIterator.hxx", bycopy.} = object of TObj_LabelIterator ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## the
                                                                                                    ## iterator
                                                                                                    ## on
                                                                                                    ## TObj
                                                                                                    ## objects
                                                                                                    ## on
                                                                                                    ## the
                                                                                                    ## sub-labels
                                                                                                    ## of
                                                                                                    ## theLabel.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theLabel
                                                                                                    ## start
                                                                                                    ## label
                                                                                                    ## for
                                                                                                    ## searching
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theType
                                                                                                    ## type
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## found
                                                                                                    ## objects,
                                                                                                    ## or
                                                                                                    ## all
                                                                                                    ## types
                                                                                                    ## if
                                                                                                    ## Null
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theRecursive
                                                                                                    ## search
                                                                                                    ## children
                                                                                                    ## recursively,
                                                                                                    ## not
                                                                                                    ## only
                                                                                                    ## on
                                                                                                    ## sub-labels
                                                                                                    ## of
                                                                                                    ## theLabel
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theAllSubChildren
                                                                                                    ## do
                                                                                                    ## not
                                                                                                    ## stop
                                                                                                    ## at
                                                                                                    ## the
                                                                                                    ## first
                                                                                                    ## level
                                                                                                    ## of
                                                                                                    ## children,
                                                                                                    ## but
                                                                                                    ## search
                                                                                                    ## for
                                                                                                    ## sub-children
                                                                                                    ## too
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Shift
                                                                                                    ## iterator
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## next
                                                                                                    ## object
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## CASCADE
                                                                                                    ## RTTI
    ## !< type of objects to iterate on
    ## !< to iterate all sub-children, do not stop on the first level


proc constructTObj_OcafObjectIterator*(theLabel: TDF_Label;
                                      theType: handle[Standard_Type] = nil;
    theRecursive: Standard_Boolean = Standard_False; theAllSubChildren: Standard_Boolean = Standard_False): TObj_OcafObjectIterator {.
    constructor, importcpp: "TObj_OcafObjectIterator(@)",
    header: "TObj_OcafObjectIterator.hxx".}
type
  TObj_OcafObjectIteratorbase_type* = TObj_LabelIterator

proc get_type_name*(): cstring {.importcpp: "TObj_OcafObjectIterator::get_type_name(@)",
                              header: "TObj_OcafObjectIterator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_OcafObjectIterator::get_type_descriptor(@)",
    header: "TObj_OcafObjectIterator.hxx".}
proc DynamicType*(this: TObj_OcafObjectIterator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TObj_OcafObjectIterator.hxx".}
## ! Define handle class for TObj_OcafObjectIterator

discard "forward decl of TObj_OcafObjectIterator"
type
  Handle_TObj_OcafObjectIterator* = handle[TObj_OcafObjectIterator]

when defined(_MSC_VER):
  discard