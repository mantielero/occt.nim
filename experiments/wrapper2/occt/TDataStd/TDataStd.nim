##  Created on: 1995-05-10
##  Created by: Denis PASCAL
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TDataStd_Current"
discard "forward decl of TDataStd_Name"
discard "forward decl of TDataStd_Comment"
discard "forward decl of TDataStd_Integer"
discard "forward decl of TDataStd_IntegerArray"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_RealArray"
discard "forward decl of TDataStd_ExtStringArray"
discard "forward decl of TDataStd_UAttribute"
discard "forward decl of TDataStd_TreeNode"
discard "forward decl of TDataStd_ChildNodeIterator"
discard "forward decl of TDataStd_Directory"
discard "forward decl of TDataStd_NoteBook"
discard "forward decl of TDataStd_Expression"
discard "forward decl of TDataStd_Relation"
discard "forward decl of TDataStd_Variable"
discard "forward decl of TDataStd_DeltaOnModificationOfIntArray"
discard "forward decl of TDataStd_DeltaOnModificationOfRealArray"
discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
discard "forward decl of TDataStd_Tick"
discard "forward decl of TDataStd_AsciiString"
discard "forward decl of TDataStd_IntPackedMap"
discard "forward decl of TDataStd_IntegerList"
discard "forward decl of TDataStd_RealList"
discard "forward decl of TDataStd_ExtStringList"
discard "forward decl of TDataStd_BooleanList"
discard "forward decl of TDataStd_ReferenceList"
discard "forward decl of TDataStd_BooleanArray"
discard "forward decl of TDataStd_ReferenceArray"
discard "forward decl of TDataStd_ByteArray"
discard "forward decl of TDataStd_NamedData"
discard "forward decl of TDataStd_HDataMapOfStringInteger"
discard "forward decl of TDataStd_HDataMapOfStringReal"
discard "forward decl of TDataStd_HDataMapOfStringString"
discard "forward decl of TDataStd_HDataMapOfStringByte"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfInteger"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfReal"
type
  TDataStd* {.importcpp: "TDataStd", header: "TDataStd.hxx", bycopy.} = object ## ! Appends to
                                                                       ## <anIDList> the list of the
                                                                       ## attributes
                                                                       ## ! IDs of this package. CAUTION:
                                                                       ## <anIDList> is NOT
                                                                       ## ! cleared before use.


proc iDList*(anIDList: var TDF_IDList) {.importcpp: "TDataStd::IDList(@)",
                                     header: "TDataStd.hxx".}
proc print*(dim: TDataStdRealEnum; s: var StandardOStream): var StandardOStream {.
    importcpp: "TDataStd::Print(@)", header: "TDataStd.hxx".}
