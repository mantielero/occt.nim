##  Created on: 1995-11-08
##  Created by: Christian CAILLET
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_CString, Interface_GTool

discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_InterfaceModel"
type
  Interface_Category* {.importcpp: "Interface_Category",
                       header: "Interface_Category.hxx", bycopy.} = object ## ! Creates a Category, with no protocol yet


proc constructInterface_Category*(): Interface_Category {.constructor,
    importcpp: "Interface_Category(@)", header: "Interface_Category.hxx".}
proc constructInterface_Category*(theProtocol: handle[Interface_Protocol]): Interface_Category {.
    constructor, importcpp: "Interface_Category(@)",
    header: "Interface_Category.hxx".}
proc constructInterface_Category*(theGTool: handle[Interface_GTool]): Interface_Category {.
    constructor, importcpp: "Interface_Category(@)",
    header: "Interface_Category.hxx".}
proc SetProtocol*(this: var Interface_Category;
                 theProtocol: handle[Interface_Protocol]) {.
    importcpp: "SetProtocol", header: "Interface_Category.hxx".}
proc CatNum*(this: var Interface_Category; theEnt: handle[Standard_Transient];
            theShares: Interface_ShareTool): Standard_Integer {.
    importcpp: "CatNum", header: "Interface_Category.hxx".}
proc ClearNums*(this: var Interface_Category) {.importcpp: "ClearNums",
    header: "Interface_Category.hxx".}
proc Compute*(this: var Interface_Category;
             theModel: handle[Interface_InterfaceModel];
             theShares: Interface_ShareTool) {.importcpp: "Compute",
    header: "Interface_Category.hxx".}
proc Num*(this: Interface_Category; theNumEnt: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Num", header: "Interface_Category.hxx".}
proc AddCategory*(theName: Standard_CString): Standard_Integer {.
    importcpp: "Interface_Category::AddCategory(@)",
    header: "Interface_Category.hxx".}
proc NbCategories*(): Standard_Integer {.importcpp: "Interface_Category::NbCategories(@)",
                                      header: "Interface_Category.hxx".}
proc Name*(theNum: Standard_Integer): Standard_CString {.
    importcpp: "Interface_Category::Name(@)", header: "Interface_Category.hxx".}
proc Number*(theName: Standard_CString): Standard_Integer {.
    importcpp: "Interface_Category::Number(@)", header: "Interface_Category.hxx".}
proc Init*() {.importcpp: "Interface_Category::Init(@)",
             header: "Interface_Category.hxx".}