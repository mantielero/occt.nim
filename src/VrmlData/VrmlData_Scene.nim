##  Created on: 2006-10-08
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

##  resolve name collisions with X11 headers

# when defined(Status):
#   discard
discard "forward decl of VrmlData_InBuffer"
type
  VrmlDataScene* {.importcpp: "VrmlData_Scene", header: "VrmlData_Scene.hxx", bycopy.} = object ## *
                                                                                        ##  Iterator type to get all contained Nodes one-by-one.
                                                                                        ##
                                                                                        ##  ---------- PRIVATE METHODS (PROHIBITED) ----------
                                                                                        ## *
                                                                                        ##  Read whatever line from the input checking the std::istream flags.
                                                                                        ##
                                                                                        ##  ---------- PRIVATE FIELDS ----------
    ## /! top-level nodes
    ## /! all nodes
    ##  read from stream
    ## /! #0 if error
    ##  write to stream
    ## *
    ##  This map is used to avoid multiple storage of the same named node: each
    ##  named node is added here when it is written the first time.
    ##
    ## *
    ##  This map allows to resolve multiple reference to any unnamed node. It
    ##  is used during the dummy write (myOutput == 0L). When a node is processed
    ##  the first time it is added to this map, the second time it is automatically
    ##  assigned a name.
    ##

  VrmlDataSceneIterator* = Iterator

proc constructVrmlDataScene*(a1: Handle[NCollectionIncAllocator] = 0'i64): VrmlDataScene {.
    constructor, importcpp: "VrmlData_Scene(@)", header: "VrmlData_Scene.hxx".}
proc status*(this: VrmlDataScene): VrmlDataErrorStatus {.noSideEffect,
    importcpp: "Status", header: "VrmlData_Scene.hxx".}
proc setVrmlDir*(this: var VrmlDataScene; a2: TCollectionExtendedString) {.
    importcpp: "SetVrmlDir", header: "VrmlData_Scene.hxx".}
proc setLinearScale*(this: var VrmlDataScene; theScale: cfloat) {.
    importcpp: "SetLinearScale", header: "VrmlData_Scene.hxx".}
proc vrmlDirIterator*(this: VrmlDataScene): VrmlDataSceneIterator[
    TCollectionExtendedString] {.noSideEffect, importcpp: "VrmlDirIterator",
                                header: "VrmlData_Scene.hxx".}
proc getIterator*(this: VrmlDataScene): VrmlDataSceneIterator {.noSideEffect,
    importcpp: "GetIterator", header: "VrmlData_Scene.hxx".}
proc namedNodesIterator*(this: VrmlDataScene): VrmlDataSceneIterator {.noSideEffect,
    importcpp: "NamedNodesIterator", header: "VrmlData_Scene.hxx".}
proc allocator*(this: VrmlDataScene): Handle[NCollectionIncAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "VrmlData_Scene.hxx".}
proc addNode*(this: var VrmlDataScene; theN: Handle[VrmlDataNode];
             isTopLevel: bool = true): Handle[VrmlDataNode] {.importcpp: "AddNode",
    header: "VrmlData_Scene.hxx".}
proc findNode*(this: VrmlDataScene; theName: cstring;
              theType: Handle[StandardType] = 0'i64): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "FindNode", header: "VrmlData_Scene.hxx".}
proc findNode*(this: VrmlDataScene; theName: cstring; theLocation: var Trsf): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "FindNode",
                   header: "VrmlData_Scene.hxx".}
proc `<<`*(this: var VrmlDataScene; theInput: var StandardIStream): var VrmlDataScene {.
    importcpp: "(# << #)", header: "VrmlData_Scene.hxx".}
converter `topoDS_Shape`*(this: VrmlDataScene): TopoDS_Shape {.noSideEffect,
    importcpp: "VrmlData_Scene::operator TopoDS_Shape",
    header: "VrmlData_Scene.hxx".}
proc getShape*(this: var VrmlDataScene; m: var VrmlDataDataMapOfShapeAppearance): TopoDS_Shape {.
    importcpp: "GetShape", header: "VrmlData_Scene.hxx".}
proc worldInfo*(this: VrmlDataScene): Handle[VrmlDataWorldInfo] {.noSideEffect,
    importcpp: "WorldInfo", header: "VrmlData_Scene.hxx".}
proc readLine*(theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Scene::ReadLine(@)", header: "VrmlData_Scene.hxx".}
proc readWord*(theBuffer: var VrmlDataInBuffer; theStr: var TCollectionAsciiString): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Scene::ReadWord(@)", header: "VrmlData_Scene.hxx".}
proc dump*(this: VrmlDataScene; theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "VrmlData_Scene.hxx".}
proc readReal*(this: VrmlDataScene; theBuffer: var VrmlDataInBuffer;
              theResult: var cfloat; isApplyScale: bool; isOnlyPositive: bool): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "ReadReal", header: "VrmlData_Scene.hxx".}
proc readXYZ*(this: VrmlDataScene; theBuffer: var VrmlDataInBuffer; theXYZ: var Xyz;
             isApplyScale: bool; isOnlyPositive: bool): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "ReadXYZ", header: "VrmlData_Scene.hxx".}
proc readXY*(this: VrmlDataScene; theBuffer: var VrmlDataInBuffer; theXYZ: var Xy;
            isApplyScale: bool; isOnlyPositive: bool): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "ReadXY", header: "VrmlData_Scene.hxx".}
proc readArrIndex*(this: VrmlDataScene; theBuffer: var VrmlDataInBuffer;
                  theArr: ptr ptr cint; theNBl: var StandardSize): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "ReadArrIndex", header: "VrmlData_Scene.hxx".}
proc getLineError*(this: VrmlDataScene): cint {.noSideEffect,
    importcpp: "GetLineError", header: "VrmlData_Scene.hxx".}
proc setIndent*(this: var VrmlDataScene; nSpc: cint) {.importcpp: "SetIndent",
    header: "VrmlData_Scene.hxx".}
proc writeXYZ*(this: VrmlDataScene; theXYZ: Xyz; isScale: bool;
              thePostfix: cstring = 0'i64): VrmlDataErrorStatus {.noSideEffect,
    importcpp: "WriteXYZ", header: "VrmlData_Scene.hxx".}
proc writeArrIndex*(this: VrmlDataScene; thePrefix: cstring; theArr: ptr ptr cint;
                   theNbBl: StandardSize): VrmlDataErrorStatus {.noSideEffect,
    importcpp: "WriteArrIndex", header: "VrmlData_Scene.hxx".}
proc writeLine*(this: VrmlDataScene; theLine0: cstring; theLine1: cstring = 0'i64;
               theIndent: cint = 0): VrmlDataErrorStatus {.noSideEffect,
    importcpp: "WriteLine", header: "VrmlData_Scene.hxx".}
proc writeNode*(this: VrmlDataScene; thePrefix: cstring; a3: Handle[VrmlDataNode]): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "WriteNode", header: "VrmlData_Scene.hxx".}
proc isDummyWrite*(this: VrmlDataScene): bool {.noSideEffect,
    importcpp: "IsDummyWrite", header: "VrmlData_Scene.hxx".}

























