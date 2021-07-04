##  Created on: 1994-09-01
##  Created by: Marie Jose MARTZ
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_SequenceOfShape, ../Standard/Standard_Integer,
  ../Standard/Standard_CString, ../Standard/Standard_Real,
  ../Message/Message_ProgressRange

discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESToBRep_Actor"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of TopoDS_Shape"
type
  IGESToBRep_Reader* {.importcpp: "IGESToBRep_Reader",
                      header: "IGESToBRep_Reader.hxx", bycopy.} = object ## ! Creates a Reader


proc constructIGESToBRep_Reader*(): IGESToBRep_Reader {.constructor,
    importcpp: "IGESToBRep_Reader(@)", header: "IGESToBRep_Reader.hxx".}
proc LoadFile*(this: var IGESToBRep_Reader; filename: Standard_CString): Standard_Integer {.
    importcpp: "LoadFile", header: "IGESToBRep_Reader.hxx".}
proc SetModel*(this: var IGESToBRep_Reader; model: handle[IGESData_IGESModel]) {.
    importcpp: "SetModel", header: "IGESToBRep_Reader.hxx".}
proc Model*(this: IGESToBRep_Reader): handle[IGESData_IGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESToBRep_Reader.hxx".}
proc SetTransientProcess*(this: var IGESToBRep_Reader;
                         TP: handle[Transfer_TransientProcess]) {.
    importcpp: "SetTransientProcess", header: "IGESToBRep_Reader.hxx".}
proc TransientProcess*(this: IGESToBRep_Reader): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "IGESToBRep_Reader.hxx".}
proc Actor*(this: IGESToBRep_Reader): handle[IGESToBRep_Actor] {.noSideEffect,
    importcpp: "Actor", header: "IGESToBRep_Reader.hxx".}
proc Clear*(this: var IGESToBRep_Reader) {.importcpp: "Clear",
                                       header: "IGESToBRep_Reader.hxx".}
proc Check*(this: IGESToBRep_Reader; withprint: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Check", header: "IGESToBRep_Reader.hxx".}
proc TransferRoots*(this: var IGESToBRep_Reader;
                   onlyvisible: Standard_Boolean = Standard_True;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "TransferRoots", header: "IGESToBRep_Reader.hxx".}
proc Transfer*(this: var IGESToBRep_Reader; num: Standard_Integer;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESToBRep_Reader.hxx".}
proc IsDone*(this: IGESToBRep_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IGESToBRep_Reader.hxx".}
proc UsedTolerance*(this: IGESToBRep_Reader): Standard_Real {.noSideEffect,
    importcpp: "UsedTolerance", header: "IGESToBRep_Reader.hxx".}
proc NbShapes*(this: IGESToBRep_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "IGESToBRep_Reader.hxx".}
proc Shape*(this: IGESToBRep_Reader; num: Standard_Integer = 1): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "IGESToBRep_Reader.hxx".}
proc OneShape*(this: IGESToBRep_Reader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "IGESToBRep_Reader.hxx".}