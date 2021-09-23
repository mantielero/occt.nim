##  Created on: 1999-02-24
##  Created by: Christian CAILLET
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfTransient,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of XSControl_ConnectedShapes"
discard "forward decl of XSControl_ConnectedShapes"
type
  Handle_XSControl_ConnectedShapes* = handle[XSControl_ConnectedShapes]

## ! From a TopoDS_Shape, or from the entity which has produced it,
## ! searches for the shapes, and the entities which have produced
## ! them in last transfer, which are adjacent to it by VERTICES

type
  XSControl_ConnectedShapes* {.importcpp: "XSControl_ConnectedShapes",
                              header: "XSControl_ConnectedShapes.hxx", bycopy.} = object of IFSelect_SelectExplore ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## Selection
                                                                                                            ## ConnectedShapes.
                                                                                                            ## It
                                                                                                            ## remains
                                                                                                            ## to
                                                                                                            ## be
                                                                                                            ## set
                                                                                                            ## a
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## TransferReader


proc constructXSControl_ConnectedShapes*(): XSControl_ConnectedShapes {.
    constructor, importcpp: "XSControl_ConnectedShapes(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc constructXSControl_ConnectedShapes*(TR: handle[XSControl_TransferReader]): XSControl_ConnectedShapes {.
    constructor, importcpp: "XSControl_ConnectedShapes(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc SetReader*(this: var XSControl_ConnectedShapes;
               TR: handle[XSControl_TransferReader]) {.importcpp: "SetReader",
    header: "XSControl_ConnectedShapes.hxx".}
proc Explore*(this: XSControl_ConnectedShapes; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "XSControl_ConnectedShapes.hxx".}
proc ExploreLabel*(this: XSControl_ConnectedShapes): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "XSControl_ConnectedShapes.hxx".}
proc AdjacentEntities*(ashape: TopoDS_Shape; TP: handle[Transfer_TransientProcess];
                      `type`: TopAbs_ShapeEnum): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "XSControl_ConnectedShapes::AdjacentEntities(@)",
                                   header: "XSControl_ConnectedShapes.hxx".}
type
  XSControl_ConnectedShapesbase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "XSControl_ConnectedShapes::get_type_name(@)",
                              header: "XSControl_ConnectedShapes.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_ConnectedShapes::get_type_descriptor(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc DynamicType*(this: XSControl_ConnectedShapes): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_ConnectedShapes.hxx".}