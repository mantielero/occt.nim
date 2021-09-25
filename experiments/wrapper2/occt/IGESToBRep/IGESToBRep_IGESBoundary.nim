##  Created on: 1998-12-16
##  Created by: Roman LYGIN
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf2d"
discard "forward decl of IGESToBRep_IGESBoundary"
discard "forward decl of IGESToBRep_IGESBoundary"
type
  HandleIGESToBRepIGESBoundary* = Handle[IGESToBRepIGESBoundary]

## ! This class is intended to translate IGES boundary entity
## ! (142-CurveOnSurface, 141-Boundary or 508-Loop) into the wire.
## ! Methods Transfer are virtual and are redefined in Advanced
## ! Data Exchange to optimize the translation and take into
## ! account advanced parameters.

type
  IGESToBRepIGESBoundary* {.importcpp: "IGESToBRep_IGESBoundary",
                           header: "IGESToBRep_IGESBoundary.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Methods
                                                                                                  ## called
                                                                                                  ## by
                                                                                                  ## both
                                                                                                  ## Transfer
                                                                                                  ## methods.


proc constructIGESToBRepIGESBoundary*(): IGESToBRepIGESBoundary {.constructor,
    importcpp: "IGESToBRep_IGESBoundary(@)", header: "IGESToBRep_IGESBoundary.hxx".}
proc constructIGESToBRepIGESBoundary*(cs: IGESToBRepCurveAndSurface): IGESToBRepIGESBoundary {.
    constructor, importcpp: "IGESToBRep_IGESBoundary(@)",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc init*(this: var IGESToBRepIGESBoundary; cs: IGESToBRepCurveAndSurface;
          entity: Handle[IGESDataIGESEntity]; face: TopoDS_Face; trans: Trsf2d;
          uFact: float; filepreference: int) {.importcpp: "Init",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc wireData*(this: IGESToBRepIGESBoundary): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData", header: "IGESToBRep_IGESBoundary.hxx".}
proc wireData3d*(this: IGESToBRepIGESBoundary): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData3d", header: "IGESToBRep_IGESBoundary.hxx".}
proc wireData2d*(this: IGESToBRepIGESBoundary): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData2d", header: "IGESToBRep_IGESBoundary.hxx".}
proc transfer*(this: var IGESToBRepIGESBoundary; okCurve: var bool;
              okCurve3d: var bool; okCurve2d: var bool;
              curve3d: Handle[IGESDataIGESEntity]; toreverse3d: bool;
              curves2d: Handle[IGESDataHArray1OfIGESEntity]; number: int): bool {.
    importcpp: "Transfer", header: "IGESToBRep_IGESBoundary.hxx".}
proc transfer*(this: var IGESToBRepIGESBoundary; okCurve: var bool;
              okCurve3d: var bool; okCurve2d: var bool;
              curve3d: Handle[ShapeExtendWireData];
              curves2d: Handle[IGESDataHArray1OfIGESEntity]; toreverse2d: bool;
              number: int; lsewd: var Handle[ShapeExtendWireData]): bool {.
    importcpp: "Transfer", header: "IGESToBRep_IGESBoundary.hxx".}
proc check*(this: var IGESToBRepIGESBoundary; result: bool; checkclosure: bool;
           okCurve3d: bool; okCurve2d: bool) {.importcpp: "Check",
    header: "IGESToBRep_IGESBoundary.hxx".}
type
  IGESToBRepIGESBoundarybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESToBRep_IGESBoundary::get_type_name(@)",
                            header: "IGESToBRep_IGESBoundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESToBRep_IGESBoundary::get_type_descriptor(@)",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc dynamicType*(this: IGESToBRepIGESBoundary): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESToBRep_IGESBoundary.hxx".}
