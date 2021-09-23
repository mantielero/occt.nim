##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../TDataStd/TDataStd_GenericEmpty

discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataXtd_Shape"
discard "forward decl of TDataXtd_Shape"
type
  Handle_TDataXtd_Shape* = handle[TDataXtd_Shape]

## ! A Shape is associated in the framework with :
## ! a NamedShape attribute

type
  TDataXtd_Shape* {.importcpp: "TDataXtd_Shape", header: "TDataXtd_Shape.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
                                                                                                                ## !
                                                                                                                ## class
                                                                                                                ## methods
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## =============
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## try
                                                                                                                ## to
                                                                                                                ## retrieve
                                                                                                                ## a
                                                                                                                ## Shape
                                                                                                                ## attribute
                                                                                                                ## at
                                                                                                                ## <current>
                                                                                                                ## label
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## or
                                                                                                                ## in
                                                                                                                ## fathers
                                                                                                                ## label
                                                                                                                ## of
                                                                                                                ## <current>.
                                                                                                                ## Returns
                                                                                                                ## True
                                                                                                                ## if
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## found
                                                                                                                ## and
                                                                                                                ## set
                                                                                                                ## <S>.


proc Find*(current: TDF_Label; S: var handle[TDataXtd_Shape]): Standard_Boolean {.
    importcpp: "TDataXtd_Shape::Find(@)", header: "TDataXtd_Shape.hxx".}
proc New*(label: TDF_Label): handle[TDataXtd_Shape] {.
    importcpp: "TDataXtd_Shape::New(@)", header: "TDataXtd_Shape.hxx".}
proc Set*(label: TDF_Label; shape: TopoDS_Shape): handle[TDataXtd_Shape] {.
    importcpp: "TDataXtd_Shape::Set(@)", header: "TDataXtd_Shape.hxx".}
proc Get*(label: TDF_Label): TopoDS_Shape {.importcpp: "TDataXtd_Shape::Get(@)",
                                        header: "TDataXtd_Shape.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Shape::GetID(@)",
                            header: "TDataXtd_Shape.hxx".}
proc constructTDataXtd_Shape*(): TDataXtd_Shape {.constructor,
    importcpp: "TDataXtd_Shape(@)", header: "TDataXtd_Shape.hxx".}
proc ID*(this: TDataXtd_Shape): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Shape.hxx".}
proc References*(this: TDataXtd_Shape; DS: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataXtd_Shape.hxx".}
proc Dump*(this: TDataXtd_Shape; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Shape.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Shape , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!
