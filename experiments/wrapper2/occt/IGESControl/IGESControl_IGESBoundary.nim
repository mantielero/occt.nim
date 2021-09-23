##  Created on: 2000-02-05
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESToBRep/IGESToBRep_IGESBoundary, ../Standard/Standard_Boolean,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of IGESControl_IGESBoundary"
discard "forward decl of IGESControl_IGESBoundary"
type
  Handle_IGESControl_IGESBoundary* = handle[IGESControl_IGESBoundary]

## ! Translates IGES boundary entity (types 141, 142 and 508)
## ! in Advanced Data Exchange.
## ! Redefines translation and treatment methods from inherited
## ! open class IGESToBRep_IGESBoundary.

type
  IGESControl_IGESBoundary* {.importcpp: "IGESControl_IGESBoundary",
                             header: "IGESControl_IGESBoundary.hxx", bycopy.} = object of IGESToBRep_IGESBoundary ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## an
                                                                                                           ## object
                                                                                                           ## and
                                                                                                           ## calls
                                                                                                           ## inherited
                                                                                                           ## constuctor.


proc constructIGESControl_IGESBoundary*(): IGESControl_IGESBoundary {.constructor,
    importcpp: "IGESControl_IGESBoundary(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc constructIGESControl_IGESBoundary*(CS: IGESToBRep_CurveAndSurface): IGESControl_IGESBoundary {.
    constructor, importcpp: "IGESControl_IGESBoundary(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc Check*(this: var IGESControl_IGESBoundary; result: Standard_Boolean;
           checkclosure: Standard_Boolean; okCurve3d: Standard_Boolean;
           okCurve2d: Standard_Boolean) {.importcpp: "Check",
                                        header: "IGESControl_IGESBoundary.hxx".}
type
  IGESControl_IGESBoundarybase_type* = IGESToBRep_IGESBoundary

proc get_type_name*(): cstring {.importcpp: "IGESControl_IGESBoundary::get_type_name(@)",
                              header: "IGESControl_IGESBoundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESControl_IGESBoundary::get_type_descriptor(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc DynamicType*(this: IGESControl_IGESBoundary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_IGESBoundary.hxx".}