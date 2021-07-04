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

import
  ../Standard/Standard, ../Standard/Standard_Type, IGESToBRep_CurveAndSurface,
  ../TopoDS/TopoDS_Face, ../gp/gp_Trsf2d, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../IGESData/IGESData_HArray1OfIGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf2d"
discard "forward decl of IGESToBRep_IGESBoundary"
discard "forward decl of IGESToBRep_IGESBoundary"
type
  Handle_IGESToBRep_IGESBoundary* = handle[IGESToBRep_IGESBoundary]

## ! This class is intended to translate IGES boundary entity
## ! (142-CurveOnSurface, 141-Boundary or 508-Loop) into the wire.
## ! Methods Transfer are virtual and are redefined in Advanced
## ! Data Exchange to optimize the translation and take into
## ! account advanced parameters.

type
  IGESToBRep_IGESBoundary* {.importcpp: "IGESToBRep_IGESBoundary",
                            header: "IGESToBRep_IGESBoundary.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIGESToBRep_IGESBoundary*(): IGESToBRep_IGESBoundary {.constructor,
    importcpp: "IGESToBRep_IGESBoundary(@)", header: "IGESToBRep_IGESBoundary.hxx".}
proc constructIGESToBRep_IGESBoundary*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_IGESBoundary {.
    constructor, importcpp: "IGESToBRep_IGESBoundary(@)",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc Init*(this: var IGESToBRep_IGESBoundary; CS: IGESToBRep_CurveAndSurface;
          entity: handle[IGESData_IGESEntity]; face: TopoDS_Face; trans: gp_Trsf2d;
          uFact: Standard_Real; filepreference: Standard_Integer) {.
    importcpp: "Init", header: "IGESToBRep_IGESBoundary.hxx".}
proc WireData*(this: IGESToBRep_IGESBoundary): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData", header: "IGESToBRep_IGESBoundary.hxx".}
proc WireData3d*(this: IGESToBRep_IGESBoundary): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData3d", header: "IGESToBRep_IGESBoundary.hxx".}
proc WireData2d*(this: IGESToBRep_IGESBoundary): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData2d", header: "IGESToBRep_IGESBoundary.hxx".}
proc Transfer*(this: var IGESToBRep_IGESBoundary; okCurve: var Standard_Boolean;
              okCurve3d: var Standard_Boolean; okCurve2d: var Standard_Boolean;
              curve3d: handle[IGESData_IGESEntity]; toreverse3d: Standard_Boolean;
              curves2d: handle[IGESData_HArray1OfIGESEntity];
              number: Standard_Integer): Standard_Boolean {.importcpp: "Transfer",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc Transfer*(this: var IGESToBRep_IGESBoundary; okCurve: var Standard_Boolean;
              okCurve3d: var Standard_Boolean; okCurve2d: var Standard_Boolean;
              curve3d: handle[ShapeExtend_WireData];
              curves2d: handle[IGESData_HArray1OfIGESEntity];
              toreverse2d: Standard_Boolean; number: Standard_Integer;
              lsewd: var handle[ShapeExtend_WireData]): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESToBRep_IGESBoundary.hxx".}
proc Check*(this: var IGESToBRep_IGESBoundary; result: Standard_Boolean;
           checkclosure: Standard_Boolean; okCurve3d: Standard_Boolean;
           okCurve2d: Standard_Boolean) {.importcpp: "Check",
                                        header: "IGESToBRep_IGESBoundary.hxx".}
type
  IGESToBRep_IGESBoundarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESToBRep_IGESBoundary::get_type_name(@)",
                              header: "IGESToBRep_IGESBoundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESToBRep_IGESBoundary::get_type_descriptor(@)",
    header: "IGESToBRep_IGESBoundary.hxx".}
proc DynamicType*(this: IGESToBRep_IGESBoundary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESToBRep_IGESBoundary.hxx".}