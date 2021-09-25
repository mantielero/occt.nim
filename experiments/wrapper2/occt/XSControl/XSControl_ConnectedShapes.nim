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
  HandleXSControlConnectedShapes* = Handle[XSControlConnectedShapes]

## ! From a TopoDS_Shape, or from the entity which has produced it,
## ! searches for the shapes, and the entities which have produced
## ! them in last transfer, which are adjacent to it by VERTICES

type
  XSControlConnectedShapes* {.importcpp: "XSControl_ConnectedShapes",
                             header: "XSControl_ConnectedShapes.hxx", bycopy.} = object of IFSelectSelectExplore ##
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


proc constructXSControlConnectedShapes*(): XSControlConnectedShapes {.constructor,
    importcpp: "XSControl_ConnectedShapes(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc constructXSControlConnectedShapes*(tr: Handle[XSControlTransferReader]): XSControlConnectedShapes {.
    constructor, importcpp: "XSControl_ConnectedShapes(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc setReader*(this: var XSControlConnectedShapes;
               tr: Handle[XSControlTransferReader]) {.importcpp: "SetReader",
    header: "XSControl_ConnectedShapes.hxx".}
proc explore*(this: XSControlConnectedShapes; level: int;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect,
    importcpp: "Explore", header: "XSControl_ConnectedShapes.hxx".}
proc exploreLabel*(this: XSControlConnectedShapes): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "XSControl_ConnectedShapes.hxx".}
proc adjacentEntities*(ashape: TopoDS_Shape; tp: Handle[TransferTransientProcess];
                      `type`: TopAbsShapeEnum): Handle[TColStdHSequenceOfTransient] {.
    importcpp: "XSControl_ConnectedShapes::AdjacentEntities(@)",
    header: "XSControl_ConnectedShapes.hxx".}
type
  XSControlConnectedShapesbaseType* = IFSelectSelectExplore

proc getTypeName*(): cstring {.importcpp: "XSControl_ConnectedShapes::get_type_name(@)",
                            header: "XSControl_ConnectedShapes.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_ConnectedShapes::get_type_descriptor(@)",
    header: "XSControl_ConnectedShapes.hxx".}
proc dynamicType*(this: XSControlConnectedShapes): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_ConnectedShapes.hxx".}
