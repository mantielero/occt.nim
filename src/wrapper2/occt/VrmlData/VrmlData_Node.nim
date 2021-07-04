##  Created on: 2006-05-25
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
  ../Standard/Standard_Type, ../NCollection/NCollection_List,
  ../Standard/Standard_Type, ../Standard/Standard_TypeDef,
  ../TCollection/TCollection_AsciiString, VrmlData_ErrorStatus

template VRMLDATA_LCOMPARE*(aa, bb: untyped): untyped =
  (if (strncmp(aa, bb, sizeof((bb)) - 1)): 0L'i64 else: (inc(aa, sizeof((bb)) - 1)))

discard "forward decl of VrmlData_InBuffer"
discard "forward decl of VrmlData_Scene"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of TCollection_AsciiString"
type
  VrmlData_Node* {.importcpp: "VrmlData_Node", header: "VrmlData_Node.hxx", bycopy.} = object of Standard_Transient ##  ---------- PUBLIC METHODS ----------
                                                                                                          ## *
                                                                                                          ##  Empty constructor
                                                                                                          ##
                                                                                                          ##  ---------- PROTECTED METHODS ----------
                                                                                                          ## *
                                                                                                          ##  Constructor
                                                                                                          ##
                                                                                                          ##  ---------- PRIVATE METHODS ----------
                                                                                                          ## *
                                                                                                          ##  Method called from VrmlData_Scene when a name should be assigned
                                                                                                          ##  automatically.
                                                                                                          ##
                                                                                                          ##  ---------- PRIVATE FIELDS ----------
                                                                                                          ##  Declaration of CASCADE RTTI
    ## /< name of the node
    when defined(OCCT_DEBUG):
      discard


proc constructVrmlData_Node*(): VrmlData_Node {.constructor,
    importcpp: "VrmlData_Node(@)", header: "VrmlData_Node.hxx".}
proc destroyVrmlData_Node*(this: var VrmlData_Node) {.
    importcpp: "#.~VrmlData_Node()", header: "VrmlData_Node.hxx".}
proc Scene*(this: VrmlData_Node): VrmlData_Scene {.noSideEffect, importcpp: "Scene",
    header: "VrmlData_Node.hxx".}
proc Name*(this: VrmlData_Node): cstring {.noSideEffect, importcpp: "Name",
                                       header: "VrmlData_Node.hxx".}
proc ReadNode*(this: var VrmlData_Node; theBuffer: var VrmlData_InBuffer;
              theNode: var handle[VrmlData_Node]; Type: handle[Standard_Type] = nil): VrmlData_ErrorStatus {.
    importcpp: "ReadNode", header: "VrmlData_Node.hxx".}
proc Read*(this: var VrmlData_Node; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Node.hxx".}
proc Write*(this: VrmlData_Node; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Node.hxx".}
proc IsDefault*(this: VrmlData_Node): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_Node.hxx".}
proc WriteClosing*(this: VrmlData_Node): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "WriteClosing", header: "VrmlData_Node.hxx".}
proc Clone*(this: VrmlData_Node; a2: handle[VrmlData_Node]): handle[VrmlData_Node] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Node.hxx".}
proc ReadBoolean*(theBuffer: var VrmlData_InBuffer; theResult: var Standard_Boolean): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Node::ReadBoolean(@)", header: "VrmlData_Node.hxx".}
proc ReadString*(theBuffer: var VrmlData_InBuffer;
                theRes: var TCollection_AsciiString): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Node::ReadString(@)", header: "VrmlData_Node.hxx".}
proc ReadMultiString*(theBuffer: var VrmlData_InBuffer;
                     theRes: var NCollection_List[TCollection_AsciiString]): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Node::ReadMultiString(@)", header: "VrmlData_Node.hxx".}
proc ReadInteger*(theBuffer: var VrmlData_InBuffer; theResult: var clong): VrmlData_ErrorStatus {.
    importcpp: "VrmlData_Node::ReadInteger(@)", header: "VrmlData_Node.hxx".}
proc OK*(theStat: VrmlData_ErrorStatus): Standard_Boolean {.
    importcpp: "VrmlData_Node::OK(@)", header: "VrmlData_Node.hxx".}
proc OK*(outStat: var VrmlData_ErrorStatus; theStat: VrmlData_ErrorStatus): Standard_Boolean {.
    importcpp: "VrmlData_Node::OK(@)", header: "VrmlData_Node.hxx".}
proc GlobalIndent*(): Standard_Integer {.importcpp: "VrmlData_Node::GlobalIndent(@)",
                                      header: "VrmlData_Node.hxx".}
type
  VrmlData_Nodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlData_Node::get_type_name(@)",
                              header: "VrmlData_Node.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Node::get_type_descriptor(@)",
    header: "VrmlData_Node.hxx".}
proc DynamicType*(this: VrmlData_Node): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Node.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Node"
type
  Handle_VrmlData_Node* = handle[VrmlData_Node]

## ! Computes a hash code for the given VRML node, in the range [1, theUpperBound]
## ! @param theNode the VRML node which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theNode: handle[VrmlData_Node]; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "HashCode(@)", header: "VrmlData_Node.hxx".}
proc IsEqual*(theOne: handle[VrmlData_Node]; theTwo: handle[VrmlData_Node]): Standard_Boolean {.
    importcpp: "IsEqual(@)", header: "VrmlData_Node.hxx".}