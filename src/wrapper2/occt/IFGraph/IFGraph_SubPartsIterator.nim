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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Interface/Interface_Graph,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_GraphContent"
type
  IFGraph_SubPartsIterator* {.importcpp: "IFGraph_SubPartsIterator",
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


proc constructIFGraph_SubPartsIterator*(agraph: Interface_Graph;
                                       whole: Standard_Boolean): IFGraph_SubPartsIterator {.
    constructor, importcpp: "IFGraph_SubPartsIterator(@)",
    header: "IFGraph_SubPartsIterator.hxx".}
proc constructIFGraph_SubPartsIterator*(other: var IFGraph_SubPartsIterator): IFGraph_SubPartsIterator {.
    constructor, importcpp: "IFGraph_SubPartsIterator(@)",
    header: "IFGraph_SubPartsIterator.hxx".}
proc GetParts*(this: var IFGraph_SubPartsIterator;
              other: var IFGraph_SubPartsIterator) {.importcpp: "GetParts",
    header: "IFGraph_SubPartsIterator.hxx".}
proc Model*(this: IFGraph_SubPartsIterator): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFGraph_SubPartsIterator.hxx".}
proc AddPart*(this: var IFGraph_SubPartsIterator) {.importcpp: "AddPart",
    header: "IFGraph_SubPartsIterator.hxx".}
proc NbParts*(this: IFGraph_SubPartsIterator): Standard_Integer {.noSideEffect,
    importcpp: "NbParts", header: "IFGraph_SubPartsIterator.hxx".}
proc PartNum*(this: IFGraph_SubPartsIterator): Standard_Integer {.noSideEffect,
    importcpp: "PartNum", header: "IFGraph_SubPartsIterator.hxx".}
proc SetLoad*(this: var IFGraph_SubPartsIterator) {.importcpp: "SetLoad",
    header: "IFGraph_SubPartsIterator.hxx".}
proc SetPartNum*(this: var IFGraph_SubPartsIterator; num: Standard_Integer) {.
    importcpp: "SetPartNum", header: "IFGraph_SubPartsIterator.hxx".}
proc GetFromEntity*(this: var IFGraph_SubPartsIterator;
                   ent: handle[Standard_Transient]; shared: Standard_Boolean) {.
    importcpp: "GetFromEntity", header: "IFGraph_SubPartsIterator.hxx".}
proc GetFromIter*(this: var IFGraph_SubPartsIterator; iter: Interface_EntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_SubPartsIterator.hxx".}
proc Reset*(this: var IFGraph_SubPartsIterator) {.importcpp: "Reset",
    header: "IFGraph_SubPartsIterator.hxx".}
proc Evaluate*(this: var IFGraph_SubPartsIterator) {.importcpp: "Evaluate",
    header: "IFGraph_SubPartsIterator.hxx".}
proc Loaded*(this: IFGraph_SubPartsIterator): Interface_GraphContent {.noSideEffect,
    importcpp: "Loaded", header: "IFGraph_SubPartsIterator.hxx".}
proc LoadedGraph*(this: IFGraph_SubPartsIterator): Interface_Graph {.noSideEffect,
    importcpp: "LoadedGraph", header: "IFGraph_SubPartsIterator.hxx".}
proc IsLoaded*(this: IFGraph_SubPartsIterator; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsLoaded", header: "IFGraph_SubPartsIterator.hxx".}
proc IsInPart*(this: IFGraph_SubPartsIterator; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsInPart", header: "IFGraph_SubPartsIterator.hxx".}
proc EntityPartNum*(this: IFGraph_SubPartsIterator; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "EntityPartNum",
    header: "IFGraph_SubPartsIterator.hxx".}
proc Start*(this: var IFGraph_SubPartsIterator) {.importcpp: "Start",
    header: "IFGraph_SubPartsIterator.hxx".}
proc More*(this: var IFGraph_SubPartsIterator): Standard_Boolean {.importcpp: "More",
    header: "IFGraph_SubPartsIterator.hxx".}
proc Next*(this: var IFGraph_SubPartsIterator) {.importcpp: "Next",
    header: "IFGraph_SubPartsIterator.hxx".}
proc IsSingle*(this: IFGraph_SubPartsIterator): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingle", header: "IFGraph_SubPartsIterator.hxx".}
proc FirstEntity*(this: IFGraph_SubPartsIterator): handle[Standard_Transient] {.
    noSideEffect, importcpp: "FirstEntity", header: "IFGraph_SubPartsIterator.hxx".}
proc Entities*(this: IFGraph_SubPartsIterator): Interface_EntityIterator {.
    noSideEffect, importcpp: "Entities", header: "IFGraph_SubPartsIterator.hxx".}
proc destroyIFGraph_SubPartsIterator*(this: var IFGraph_SubPartsIterator) {.
    importcpp: "#.~IFGraph_SubPartsIterator()",
    header: "IFGraph_SubPartsIterator.hxx".}