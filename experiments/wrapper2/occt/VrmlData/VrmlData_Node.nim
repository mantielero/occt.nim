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

template vrmldata_Lcompare*(aa, bb: untyped): untyped =
  (if (strncmp(aa, bb, sizeof((bb)) - 1)): 0'i64 else: (inc(aa, sizeof((bb)) - 1)))

discard "forward decl of VrmlData_InBuffer"
discard "forward decl of VrmlData_Scene"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of TCollection_AsciiString"
type
  VrmlDataNode* {.importcpp: "VrmlData_Node", header: "VrmlData_Node.hxx", bycopy.} = object of StandardTransient ##  ---------- PUBLIC METHODS ----------
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
#     when defined(OCCT_DEBUG):
#       discard


proc constructVrmlDataNode*(): VrmlDataNode {.constructor,
    importcpp: "VrmlData_Node(@)", header: "VrmlData_Node.hxx".}
proc destroyVrmlDataNode*(this: var VrmlDataNode) {.importcpp: "#.~VrmlData_Node()",
    header: "VrmlData_Node.hxx".}
proc scene*(this: VrmlDataNode): VrmlDataScene {.noSideEffect, importcpp: "Scene",
    header: "VrmlData_Node.hxx".}
proc name*(this: VrmlDataNode): cstring {.noSideEffect, importcpp: "Name",
                                      header: "VrmlData_Node.hxx".}
proc readNode*(this: var VrmlDataNode; theBuffer: var VrmlDataInBuffer;
              theNode: var Handle[VrmlDataNode]; `type`: Handle[StandardType] = nil): VrmlDataErrorStatus {.
    importcpp: "ReadNode", header: "VrmlData_Node.hxx".}
proc read*(this: var VrmlDataNode; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Node.hxx".}
proc write*(this: VrmlDataNode; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Node.hxx".}
proc isDefault*(this: VrmlDataNode): bool {.noSideEffect, importcpp: "IsDefault",
                                        header: "VrmlData_Node.hxx".}
proc writeClosing*(this: VrmlDataNode): VrmlDataErrorStatus {.noSideEffect,
    importcpp: "WriteClosing", header: "VrmlData_Node.hxx".}
proc clone*(this: VrmlDataNode; a2: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Node.hxx".}
proc readBoolean*(theBuffer: var VrmlDataInBuffer; theResult: var bool): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Node::ReadBoolean(@)", header: "VrmlData_Node.hxx".}
proc readString*(theBuffer: var VrmlDataInBuffer; theRes: var TCollectionAsciiString): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Node::ReadString(@)", header: "VrmlData_Node.hxx".}
proc readMultiString*(theBuffer: var VrmlDataInBuffer;
                     theRes: var NCollectionList[TCollectionAsciiString]): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Node::ReadMultiString(@)", header: "VrmlData_Node.hxx".}
proc readInteger*(theBuffer: var VrmlDataInBuffer; theResult: var clong): VrmlDataErrorStatus {.
    importcpp: "VrmlData_Node::ReadInteger(@)", header: "VrmlData_Node.hxx".}
proc ok*(theStat: VrmlDataErrorStatus): bool {.importcpp: "VrmlData_Node::OK(@)",
    header: "VrmlData_Node.hxx".}
proc ok*(outStat: var VrmlDataErrorStatus; theStat: VrmlDataErrorStatus): bool {.
    importcpp: "VrmlData_Node::OK(@)", header: "VrmlData_Node.hxx".}
proc globalIndent*(): cint {.importcpp: "VrmlData_Node::GlobalIndent(@)",
                          header: "VrmlData_Node.hxx".}
type
  VrmlDataNodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlData_Node::get_type_name(@)",
                            header: "VrmlData_Node.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Node::get_type_descriptor(@)",
    header: "VrmlData_Node.hxx".}
proc dynamicType*(this: VrmlDataNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Node.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Node"
type
  HandleC1C1* = Handle[VrmlDataNode]

## ! Computes a hash code for the given VRML node, in the range [1, theUpperBound]
## ! @param theNode the VRML node which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theNode: Handle[VrmlDataNode]; theUpperBound: cint): cint {.
    importcpp: "HashCode(@)", header: "VrmlData_Node.hxx".}
proc isEqual*(theOne: Handle[VrmlDataNode]; theTwo: Handle[VrmlDataNode]): bool {.
    importcpp: "IsEqual(@)", header: "VrmlData_Node.hxx".}

























