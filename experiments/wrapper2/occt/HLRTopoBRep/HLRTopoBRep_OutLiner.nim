##  Created on: 1994-08-03
##  Created by: Christophe MARION
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  HLRTopoBRep_Data, ../Standard/Standard_Transient,
  ../BRepTopAdaptor/BRepTopAdaptor_MapOfShapeTool, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRTopoBRep_Data"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Face"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRTopoBRep_OutLiner"
type
  Handle_HLRTopoBRep_OutLiner* = handle[HLRTopoBRep_OutLiner]
  HLRTopoBRep_OutLiner* {.importcpp: "HLRTopoBRep_OutLiner",
                         header: "HLRTopoBRep_OutLiner.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Builds
                                                                                              ## faces
                                                                                              ## from
                                                                                              ## F
                                                                                              ## and
                                                                                              ## add
                                                                                              ## them
                                                                                              ## to
                                                                                              ## S.


proc constructHLRTopoBRep_OutLiner*(): HLRTopoBRep_OutLiner {.constructor,
    importcpp: "HLRTopoBRep_OutLiner(@)", header: "HLRTopoBRep_OutLiner.hxx".}
proc constructHLRTopoBRep_OutLiner*(OriSh: TopoDS_Shape): HLRTopoBRep_OutLiner {.
    constructor, importcpp: "HLRTopoBRep_OutLiner(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc constructHLRTopoBRep_OutLiner*(OriS: TopoDS_Shape; OutS: TopoDS_Shape): HLRTopoBRep_OutLiner {.
    constructor, importcpp: "HLRTopoBRep_OutLiner(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc OriginalShape*(this: var HLRTopoBRep_OutLiner; OriS: TopoDS_Shape) {.
    importcpp: "OriginalShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc OriginalShape*(this: var HLRTopoBRep_OutLiner): var TopoDS_Shape {.
    importcpp: "OriginalShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc OutLinedShape*(this: var HLRTopoBRep_OutLiner; OutS: TopoDS_Shape) {.
    importcpp: "OutLinedShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc OutLinedShape*(this: var HLRTopoBRep_OutLiner): var TopoDS_Shape {.
    importcpp: "OutLinedShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc DataStructure*(this: var HLRTopoBRep_OutLiner): var HLRTopoBRep_Data {.
    importcpp: "DataStructure", header: "HLRTopoBRep_OutLiner.hxx".}
proc Fill*(this: var HLRTopoBRep_OutLiner; P: HLRAlgo_Projector;
          MST: var BRepTopAdaptor_MapOfShapeTool; nbIso: Standard_Integer) {.
    importcpp: "Fill", header: "HLRTopoBRep_OutLiner.hxx".}
type
  HLRTopoBRep_OutLinerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRTopoBRep_OutLiner::get_type_name(@)",
                              header: "HLRTopoBRep_OutLiner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTopoBRep_OutLiner::get_type_descriptor(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc DynamicType*(this: HLRTopoBRep_OutLiner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTopoBRep_OutLiner.hxx".}