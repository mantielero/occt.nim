import toptools_types

##  Created on: 2012-06-27
##  Created by: Dmitry BOBYLEV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_Mutex"
discard "forward decl of TopoDS_Shape"


proc newTopToolsMutexForShapeProvider*(): TopToolsMutexForShapeProvider {.cdecl,
    constructor, importcpp: "TopTools_MutexForShapeProvider(@)", header: "TopTools_MutexForShapeProvider.hxx".}
proc destroyTopToolsMutexForShapeProvider*(
    this: var TopToolsMutexForShapeProvider) {.cdecl,
    importcpp: "#.~TopTools_MutexForShapeProvider()", header: "TopTools_MutexForShapeProvider.hxx".}
proc createMutexesForSubShapes*(this: var TopToolsMutexForShapeProvider;
                               theShape: TopoDS_Shape; theType: TopAbsShapeEnum) {.
    cdecl, importcpp: "CreateMutexesForSubShapes", header: "TopTools_MutexForShapeProvider.hxx".}
proc createMutexForShape*(this: var TopToolsMutexForShapeProvider;
                         theShape: TopoDS_Shape) {.cdecl,
    importcpp: "CreateMutexForShape", header: "TopTools_MutexForShapeProvider.hxx".}
proc getMutex*(this: TopToolsMutexForShapeProvider; theShape: TopoDS_Shape): ptr StandardMutex {.
    noSideEffect, cdecl, importcpp: "GetMutex", header: "TopTools_MutexForShapeProvider.hxx".}
proc removeAllMutexes*(this: var TopToolsMutexForShapeProvider) {.cdecl,
    importcpp: "RemoveAllMutexes", header: "TopTools_MutexForShapeProvider.hxx".}
