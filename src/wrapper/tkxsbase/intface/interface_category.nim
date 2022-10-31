import ../../tkernel/standard/standard_types


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

type
  InterfaceCategory* {.importcpp: "Interface_Category",
                      header: "Interface_Category.hxx", bycopy.} = object ## ! Creates a Category, with no protocol yet


proc newInterfaceCategory*(): InterfaceCategory {.cdecl, constructor,
    importcpp: "Interface_Category(@)", header: "Interface_Category.hxx".}
proc newInterfaceCategory*(theProtocol: Handle[InterfaceProtocol]): InterfaceCategory {.
    cdecl, constructor, importcpp: "Interface_Category(@)", header: "Interface_Category.hxx".}
proc newInterfaceCategory*(theGTool: Handle[InterfaceGTool]): InterfaceCategory {.
    cdecl, constructor, importcpp: "Interface_Category(@)", header: "Interface_Category.hxx".}
proc setProtocol*(this: var InterfaceCategory;
                 theProtocol: Handle[InterfaceProtocol]) {.cdecl,
    importcpp: "SetProtocol", header: "Interface_Category.hxx".}
proc catNum*(this: var InterfaceCategory; theEnt: Handle[StandardTransient];
            theShares: InterfaceShareTool): cint {.cdecl, importcpp: "CatNum",
    header: "Interface_Category.hxx".}
proc clearNums*(this: var InterfaceCategory) {.cdecl, importcpp: "ClearNums",
    header: "Interface_Category.hxx".}
proc compute*(this: var InterfaceCategory;
             theModel: Handle[InterfaceInterfaceModel];
             theShares: InterfaceShareTool) {.cdecl, importcpp: "Compute",
    header: "Interface_Category.hxx".}
proc num*(this: InterfaceCategory; theNumEnt: cint): cint {.noSideEffect, cdecl,
    importcpp: "Num", header: "Interface_Category.hxx".}
proc addCategory*(theName: cstring): cint {.cdecl, importcpp: "Interface_Category::AddCategory(@)",
                                        header: "Interface_Category.hxx".}
proc nbCategories*(): cint {.cdecl,
                          importcpp: "Interface_Category::NbCategories(@)",
                          header: "Interface_Category.hxx".}
proc name*(theNum: cint): cstring {.cdecl, importcpp: "Interface_Category::Name(@)",
                                header: "Interface_Category.hxx".}
proc number*(theName: cstring): cint {.cdecl,
                                   importcpp: "Interface_Category::Number(@)",
                                   header: "Interface_Category.hxx".}
proc init*() {.cdecl, importcpp: "Interface_Category::Init(@)", header: "Interface_Category.hxx".}
