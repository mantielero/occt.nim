##  Created on: 2013-12-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  BVH_Box, BVH_Properties

## ! A non-template class for using as base for BVH_Object
## ! (just to have a named base class).

type
  BVH_ObjectTransient* {.importcpp: "BVH_ObjectTransient",
                        header: "BVH_Object.hxx", bycopy.} = object of Standard_Transient ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## properties
                                                                                   ## of
                                                                                   ## the
                                                                                   ## geometric
                                                                                   ## object.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## new
                                                                                   ## abstract
                                                                                   ## geometric
                                                                                   ## object.
    ## !< Marks internal object state as outdated
    ## !< Generic properties assigned to the object

  BVH_ObjectTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BVH_ObjectTransient::get_type_name(@)",
                              header: "BVH_Object.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BVH_ObjectTransient::get_type_descriptor(@)",
    header: "BVH_Object.hxx".}
proc DynamicType*(this: BVH_ObjectTransient): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BVH_Object.hxx".}
proc Properties*(this: BVH_ObjectTransient): handle[BVH_Properties] {.noSideEffect,
    importcpp: "Properties", header: "BVH_Object.hxx".}
proc SetProperties*(this: var BVH_ObjectTransient;
                   theProperties: handle[BVH_Properties]) {.
    importcpp: "SetProperties", header: "BVH_Object.hxx".}
proc IsDirty*(this: BVH_ObjectTransient): Standard_Boolean {.noSideEffect,
    importcpp: "IsDirty", header: "BVH_Object.hxx".}
proc MarkDirty*(this: var BVH_ObjectTransient) {.importcpp: "MarkDirty",
    header: "BVH_Object.hxx".}
## ! Abstract geometric object bounded by BVH box.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Object*[T; N: static[cint]] {.importcpp: "BVH_Object<\'0,\'1>",
                                 header: "BVH_Object.hxx", bycopy.} = object of BVH_ObjectTransient ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## new
                                                                                             ## abstract
                                                                                             ## geometric
                                                                                             ## object.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## AABB
                                                                                             ## of
                                                                                             ## the
                                                                                             ## geometric
                                                                                             ## object.


proc constructBVH_Object*[T; N: static[cint]](): BVH_Object[T, N] {.constructor,
    importcpp: "BVH_Object<\'*0,\'*1>(@)", header: "BVH_Object.hxx".}
proc destroyBVH_Object*[T; N: static[cint]](this: var BVH_Object[T, N]) {.
    importcpp: "#.~BVH_Object()", header: "BVH_Object.hxx".}
proc Box*[T; N: static[cint]](this: BVH_Object[T, N]): BVH_Box[T, N] {.noSideEffect,
    importcpp: "Box", header: "BVH_Object.hxx".}