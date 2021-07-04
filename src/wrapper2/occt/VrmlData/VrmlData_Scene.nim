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

import
  VrmlData_ListOfNode, VrmlData_MapOfNode, VrmlData_ErrorStatus, VrmlData_Geometry,
  VrmlData_WorldInfo, ../TopoDS/TopoDS_Shape, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../TCollection/TCollection_ExtendedString,
  ../NCollection/NCollection_IncAllocator, ../Standard/Standard_Mutex,
  VrmlData_DataMapOfShapeAppearance

##  resolve name collisions with X11 headers

when defined(Status):
  discard
discard "forward decl of VrmlData_InBuffer"
type
  VrmlData_Scene* {.importcpp: "VrmlData_Scene", header: "VrmlData_Scene.hxx", bycopy.} = object ## *
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

  VrmlData_SceneIterator* = Iterator

proc constructVrmlData_Scene*(a1: handle[NCollection_IncAllocator] = 0L'i64): VrmlData_Scene {.
    constructor, importcpp: "VrmlData_Scene(@)", header: "VrmlData_Scene.hxx".}
proc Status*(this: VrmlData_Scene): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "Status", header: "VrmlData_Scene.hxx".}
proc SetVrmlDir*(this: var VrmlData_Scene; a2: TCollection_ExtendedString) {.
    importcpp: "SetVrmlDir", header: "VrmlData_Scene.hxx".}
proc SetLinearScale*(this: var VrmlData_Scene; theScale: Standard_Real) {.
    importcpp: "SetLinearScale", header: "VrmlData_Scene.hxx".}
proc VrmlDirIterator*(this: VrmlData_Scene): VrmlData_SceneIterator[
    TCollection_ExtendedString] {.noSideEffect, importcpp: "VrmlDirIterator",
                                 header: "VrmlData_Scene.hxx".}
proc GetIterator*(this: VrmlData_Scene): VrmlData_SceneIterator {.noSideEffect,
    importcpp: "GetIterator", header: "VrmlData_Scene.hxx".}
proc NamedNodesIterator*(this: VrmlData_Scene): VrmlData_SceneIterator {.
    noSideEffect, importcpp: "NamedNodesIterator", header: "VrmlData_Scene.hxx".}
proc Allocator*(this: VrmlData_Scene): handle[NCollection_IncAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "VrmlData_Scene.hxx".}
proc AddNode*(this: var VrmlData_Scene; theN: handle[VrmlData_Node];
             isTopLevel: Standard_Boolean = Standard_True): handle[VrmlData_Node] {.
    importcpp: "AddNode", header: "VrmlData_Scene.hxx".}
proc FindNode*(this: VrmlData_Scene; theName: cstring;
              theType: handle[Standard_Type] = 0L'i64): handle[VrmlData_Node] {.
    noSideEffect, importcpp: "FindNode", header: "VrmlData_Scene.hxx".}
proc FindNode*(this: VrmlData_Scene; theName: cstring; theLocation: var gp_Trsf): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "FindNode",
                    header: "VrmlData_Scene.hxx".}
proc `<<`*(this: var VrmlData_Scene; theInput: var Standard_IStream): var VrmlData_Scene {.
    importcpp: "(# << #)", header: "VrmlData_Scene.hxx".}
converter `TopoDS_Shape`*(this: VrmlData_Scene): TopoDS_Shape {.noSideEffect,
    importcpp: "VrmlData_Scene::operator TopoDS_Shape",
    header: "VrmlData_Scene.hxx".}
proc GetShape*(this: var VrmlData_Scene; M: var VrmlData_DataMapOfShapeAppearance): TopoDS_Shape {.
    importcpp: "GetShape", header: "VrmlData_Scene.hxx".}
proc WorldInfo*(this: VrmlData_Scene): handle[VrmlData_WorldInfo] {.noSideEffect,
    importcpp: "WorldInfo", header: "VrmlData_Scene.hxx".}
proc ReadLine*(theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Scene::ReadLine(@)", header: "VrmlData_Scene.hxx".}
proc ReadWord*(theBuffer: var VrmlData_InBuffer; theStr: var TCollection_AsciiString): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Scene::ReadWord(@)", header: "VrmlData_Scene.hxx".}
proc Dump*(this: VrmlData_Scene; theStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "VrmlData_Scene.hxx".}
proc ReadReal*(this: VrmlData_Scene; theBuffer: var VrmlData_InBuffer;
              theResult: var Standard_Real; isApplyScale: Standard_Boolean;
              isOnlyPositive: Standard_Boolean): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "ReadReal", header: "VrmlData_Scene.hxx".}
proc ReadXYZ*(this: VrmlData_Scene; theBuffer: var VrmlData_InBuffer;
             theXYZ: var gp_XYZ; isApplyScale: Standard_Boolean;
             isOnlyPositive: Standard_Boolean): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "ReadXYZ", header: "VrmlData_Scene.hxx".}
proc ReadXY*(this: VrmlData_Scene; theBuffer: var VrmlData_InBuffer;
            theXYZ: var gp_XY; isApplyScale: Standard_Boolean;
            isOnlyPositive: Standard_Boolean): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "ReadXY", header: "VrmlData_Scene.hxx".}
proc ReadArrIndex*(this: VrmlData_Scene; theBuffer: var VrmlData_InBuffer;
                  theArr: ptr ptr Standard_Integer; theNBl: var Standard_Size): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "ReadArrIndex", header: "VrmlData_Scene.hxx".}
proc GetLineError*(this: VrmlData_Scene): Standard_Integer {.noSideEffect,
    importcpp: "GetLineError", header: "VrmlData_Scene.hxx".}
proc SetIndent*(this: var VrmlData_Scene; nSpc: Standard_Integer) {.
    importcpp: "SetIndent", header: "VrmlData_Scene.hxx".}
proc WriteXYZ*(this: VrmlData_Scene; theXYZ: gp_XYZ; isScale: Standard_Boolean;
              thePostfix: cstring = 0L'i64): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "WriteXYZ", header: "VrmlData_Scene.hxx".}
proc WriteArrIndex*(this: VrmlData_Scene; thePrefix: cstring;
                   theArr: ptr ptr Standard_Integer; theNbBl: Standard_Size): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "WriteArrIndex", header: "VrmlData_Scene.hxx".}
proc WriteLine*(this: VrmlData_Scene; theLine0: cstring; theLine1: cstring = 0L'i64;
               theIndent: Standard_Integer = 0): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "WriteLine", header: "VrmlData_Scene.hxx".}
proc WriteNode*(this: VrmlData_Scene; thePrefix: cstring; a3: handle[VrmlData_Node]): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "WriteNode", header: "VrmlData_Scene.hxx".}
proc IsDummyWrite*(this: VrmlData_Scene): Standard_Boolean {.noSideEffect,
    importcpp: "IsDummyWrite", header: "VrmlData_Scene.hxx".}