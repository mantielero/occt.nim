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

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of IGESControl_IGESBoundary"
discard "forward decl of IGESControl_IGESBoundary"
type
  HandleIGESControlIGESBoundary* = Handle[IGESControlIGESBoundary]

## ! Translates IGES boundary entity (types 141, 142 and 508)
## ! in Advanced Data Exchange.
## ! Redefines translation and treatment methods from inherited
## ! open class IGESToBRep_IGESBoundary.

type
  IGESControlIGESBoundary* {.importcpp: "IGESControl_IGESBoundary",
                            header: "IGESControl_IGESBoundary.hxx", bycopy.} = object of IGESToBRepIGESBoundary ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## an
                                                                                                         ## object
                                                                                                         ## and
                                                                                                         ## calls
                                                                                                         ## inherited
                                                                                                         ## constuctor.


proc constructIGESControlIGESBoundary*(): IGESControlIGESBoundary {.constructor,
    importcpp: "IGESControl_IGESBoundary(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc constructIGESControlIGESBoundary*(cs: IGESToBRepCurveAndSurface): IGESControlIGESBoundary {.
    constructor, importcpp: "IGESControl_IGESBoundary(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc check*(this: var IGESControlIGESBoundary; result: bool; checkclosure: bool;
           okCurve3d: bool; okCurve2d: bool) {.importcpp: "Check",
    header: "IGESControl_IGESBoundary.hxx".}
type
  IGESControlIGESBoundarybaseType* = IGESToBRepIGESBoundary

proc getTypeName*(): cstring {.importcpp: "IGESControl_IGESBoundary::get_type_name(@)",
                            header: "IGESControl_IGESBoundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESControl_IGESBoundary::get_type_descriptor(@)",
    header: "IGESControl_IGESBoundary.hxx".}
proc dynamicType*(this: IGESControlIGESBoundary): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_IGESBoundary.hxx".}
