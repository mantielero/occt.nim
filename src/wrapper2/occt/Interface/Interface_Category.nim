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

discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_InterfaceModel"
type
  InterfaceCategory* {.importcpp: "Interface_Category",
                      header: "Interface_Category.hxx", bycopy.} = object ## ! Creates a Category, with no protocol yet


proc constructInterfaceCategory*(): InterfaceCategory {.constructor,
    importcpp: "Interface_Category(@)", header: "Interface_Category.hxx".}
proc constructInterfaceCategory*(theProtocol: Handle[InterfaceProtocol]): InterfaceCategory {.
    constructor, importcpp: "Interface_Category(@)",
    header: "Interface_Category.hxx".}
proc constructInterfaceCategory*(theGTool: Handle[InterfaceGTool]): InterfaceCategory {.
    constructor, importcpp: "Interface_Category(@)",
    header: "Interface_Category.hxx".}
proc setProtocol*(this: var InterfaceCategory;
                 theProtocol: Handle[InterfaceProtocol]) {.
    importcpp: "SetProtocol", header: "Interface_Category.hxx".}
proc catNum*(this: var InterfaceCategory; theEnt: Handle[StandardTransient];
            theShares: InterfaceShareTool): StandardInteger {.importcpp: "CatNum",
    header: "Interface_Category.hxx".}
proc clearNums*(this: var InterfaceCategory) {.importcpp: "ClearNums",
    header: "Interface_Category.hxx".}
proc compute*(this: var InterfaceCategory;
             theModel: Handle[InterfaceInterfaceModel];
             theShares: InterfaceShareTool) {.importcpp: "Compute",
    header: "Interface_Category.hxx".}
proc num*(this: InterfaceCategory; theNumEnt: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Num", header: "Interface_Category.hxx".}
proc addCategory*(theName: StandardCString): StandardInteger {.
    importcpp: "Interface_Category::AddCategory(@)",
    header: "Interface_Category.hxx".}
proc nbCategories*(): StandardInteger {.importcpp: "Interface_Category::NbCategories(@)",
                                     header: "Interface_Category.hxx".}
proc name*(theNum: StandardInteger): StandardCString {.
    importcpp: "Interface_Category::Name(@)", header: "Interface_Category.hxx".}
proc number*(theName: StandardCString): StandardInteger {.
    importcpp: "Interface_Category::Number(@)", header: "Interface_Category.hxx".}
proc init*() {.importcpp: "Interface_Category::Init(@)",
             header: "Interface_Category.hxx".}

