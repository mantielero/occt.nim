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

discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRTopoBRep_Data"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Face"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRTopoBRep_OutLiner"
type
  HandleC1C1* = Handle[HLRTopoBRepOutLiner]
  HLRTopoBRepOutLiner* {.importcpp: "HLRTopoBRep_OutLiner",
                        header: "HLRTopoBRep_OutLiner.hxx", bycopy.} = object of StandardTransient ##
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


proc constructHLRTopoBRepOutLiner*(): HLRTopoBRepOutLiner {.constructor,
    importcpp: "HLRTopoBRep_OutLiner(@)", header: "HLRTopoBRep_OutLiner.hxx".}
proc constructHLRTopoBRepOutLiner*(oriSh: TopoDS_Shape): HLRTopoBRepOutLiner {.
    constructor, importcpp: "HLRTopoBRep_OutLiner(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc constructHLRTopoBRepOutLiner*(oriS: TopoDS_Shape; outS: TopoDS_Shape): HLRTopoBRepOutLiner {.
    constructor, importcpp: "HLRTopoBRep_OutLiner(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc originalShape*(this: var HLRTopoBRepOutLiner; oriS: TopoDS_Shape) {.
    importcpp: "OriginalShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc originalShape*(this: var HLRTopoBRepOutLiner): var TopoDS_Shape {.
    importcpp: "OriginalShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc outLinedShape*(this: var HLRTopoBRepOutLiner; outS: TopoDS_Shape) {.
    importcpp: "OutLinedShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc outLinedShape*(this: var HLRTopoBRepOutLiner): var TopoDS_Shape {.
    importcpp: "OutLinedShape", header: "HLRTopoBRep_OutLiner.hxx".}
proc dataStructure*(this: var HLRTopoBRepOutLiner): var HLRTopoBRepData {.
    importcpp: "DataStructure", header: "HLRTopoBRep_OutLiner.hxx".}
proc fill*(this: var HLRTopoBRepOutLiner; p: HLRAlgoProjector;
          mst: var BRepTopAdaptorMapOfShapeTool; nbIso: cint) {.importcpp: "Fill",
    header: "HLRTopoBRep_OutLiner.hxx".}
type
  HLRTopoBRepOutLinerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRTopoBRep_OutLiner::get_type_name(@)",
                            header: "HLRTopoBRep_OutLiner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTopoBRep_OutLiner::get_type_descriptor(@)",
    header: "HLRTopoBRep_OutLiner.hxx".}
proc dynamicType*(this: HLRTopoBRepOutLiner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTopoBRep_OutLiner.hxx".}

























