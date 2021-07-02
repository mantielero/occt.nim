##  Created on: 1992-09-23
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_GraphContent"
type
  IFGraphSubPartsIterator* {.importcpp: "IFGraph_SubPartsIterator",
                            header: "IFGraph_SubPartsIterator.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## with
                                                                                 ## a
                                                                                 ## Graph,
                                                                                 ## whole
                                                                                 ## or
                                                                                 ## parts
                                                                                 ## of
                                                                                 ## it
                                                                                 ##
                                                                                 ## !
                                                                                 ## whole
                                                                                 ## True
                                                                                 ## :
                                                                                 ## works
                                                                                 ## on
                                                                                 ## the
                                                                                 ## entire
                                                                                 ## Model
                                                                                 ##
                                                                                 ## !
                                                                                 ## whole
                                                                                 ## False
                                                                                 ## :
                                                                                 ## empty,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## be
                                                                                 ## filled
                                                                                 ##
                                                                                 ## !
                                                                                 ## SubPartIterator
                                                                                 ## is
                                                                                 ## set
                                                                                 ## to
                                                                                 ## load
                                                                                 ## entities
                                                                                 ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## Graph
                                                                                 ## used
                                                                                 ## by
                                                                                 ## <me>.
                                                                                 ## Used
                                                                                 ## to
                                                                                 ## create
                                                                                 ## another
                                                                                 ##
                                                                                 ## !
                                                                                 ## SubPartsIterator
                                                                                 ## from
                                                                                 ## <me>


proc constructIFGraphSubPartsIterator*(agraph: InterfaceGraph;
                                      whole: StandardBoolean): IFGraphSubPartsIterator {.
    constructor, importcpp: "IFGraph_SubPartsIterator(@)",
    header: "IFGraph_SubPartsIterator.hxx".}
proc constructIFGraphSubPartsIterator*(other: var IFGraphSubPartsIterator): IFGraphSubPartsIterator {.
    constructor, importcpp: "IFGraph_SubPartsIterator(@)",
    header: "IFGraph_SubPartsIterator.hxx".}
proc getParts*(this: var IFGraphSubPartsIterator; other: var IFGraphSubPartsIterator) {.
    importcpp: "GetParts", header: "IFGraph_SubPartsIterator.hxx".}
proc model*(this: IFGraphSubPartsIterator): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFGraph_SubPartsIterator.hxx".}
proc addPart*(this: var IFGraphSubPartsIterator) {.importcpp: "AddPart",
    header: "IFGraph_SubPartsIterator.hxx".}
proc nbParts*(this: IFGraphSubPartsIterator): StandardInteger {.noSideEffect,
    importcpp: "NbParts", header: "IFGraph_SubPartsIterator.hxx".}
proc partNum*(this: IFGraphSubPartsIterator): StandardInteger {.noSideEffect,
    importcpp: "PartNum", header: "IFGraph_SubPartsIterator.hxx".}
proc setLoad*(this: var IFGraphSubPartsIterator) {.importcpp: "SetLoad",
    header: "IFGraph_SubPartsIterator.hxx".}
proc setPartNum*(this: var IFGraphSubPartsIterator; num: StandardInteger) {.
    importcpp: "SetPartNum", header: "IFGraph_SubPartsIterator.hxx".}
proc getFromEntity*(this: var IFGraphSubPartsIterator;
                   ent: Handle[StandardTransient]; shared: StandardBoolean) {.
    importcpp: "GetFromEntity", header: "IFGraph_SubPartsIterator.hxx".}
proc getFromIter*(this: var IFGraphSubPartsIterator; iter: InterfaceEntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_SubPartsIterator.hxx".}
proc reset*(this: var IFGraphSubPartsIterator) {.importcpp: "Reset",
    header: "IFGraph_SubPartsIterator.hxx".}
proc evaluate*(this: var IFGraphSubPartsIterator) {.importcpp: "Evaluate",
    header: "IFGraph_SubPartsIterator.hxx".}
proc loaded*(this: IFGraphSubPartsIterator): InterfaceGraphContent {.noSideEffect,
    importcpp: "Loaded", header: "IFGraph_SubPartsIterator.hxx".}
proc loadedGraph*(this: IFGraphSubPartsIterator): InterfaceGraph {.noSideEffect,
    importcpp: "LoadedGraph", header: "IFGraph_SubPartsIterator.hxx".}
proc isLoaded*(this: IFGraphSubPartsIterator; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsLoaded", header: "IFGraph_SubPartsIterator.hxx".}
proc isInPart*(this: IFGraphSubPartsIterator; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsInPart", header: "IFGraph_SubPartsIterator.hxx".}
proc entityPartNum*(this: IFGraphSubPartsIterator; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "EntityPartNum",
    header: "IFGraph_SubPartsIterator.hxx".}
proc start*(this: var IFGraphSubPartsIterator) {.importcpp: "Start",
    header: "IFGraph_SubPartsIterator.hxx".}
proc more*(this: var IFGraphSubPartsIterator): StandardBoolean {.importcpp: "More",
    header: "IFGraph_SubPartsIterator.hxx".}
proc next*(this: var IFGraphSubPartsIterator) {.importcpp: "Next",
    header: "IFGraph_SubPartsIterator.hxx".}
proc isSingle*(this: IFGraphSubPartsIterator): StandardBoolean {.noSideEffect,
    importcpp: "IsSingle", header: "IFGraph_SubPartsIterator.hxx".}
proc firstEntity*(this: IFGraphSubPartsIterator): Handle[StandardTransient] {.
    noSideEffect, importcpp: "FirstEntity", header: "IFGraph_SubPartsIterator.hxx".}
proc entities*(this: IFGraphSubPartsIterator): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Entities", header: "IFGraph_SubPartsIterator.hxx".}
proc destroyIFGraphSubPartsIterator*(this: var IFGraphSubPartsIterator) {.
    importcpp: "#.~IFGraph_SubPartsIterator()",
    header: "IFGraph_SubPartsIterator.hxx".}

