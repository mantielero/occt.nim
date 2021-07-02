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

## ! A non-template class for using as base for BVH_Object
## ! (just to have a named base class).

type
  BVH_ObjectTransient* {.importcpp: "BVH_ObjectTransient",
                        header: "BVH_Object.hxx", bycopy.} = object of StandardTransient ##
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

  BVH_ObjectTransientbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BVH_ObjectTransient::get_type_name(@)",
                            header: "BVH_Object.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BVH_ObjectTransient::get_type_descriptor(@)",
    header: "BVH_Object.hxx".}
proc dynamicType*(this: BVH_ObjectTransient): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BVH_Object.hxx".}
proc properties*(this: BVH_ObjectTransient): Handle[BVH_Properties] {.noSideEffect,
    importcpp: "Properties", header: "BVH_Object.hxx".}
proc setProperties*(this: var BVH_ObjectTransient;
                   theProperties: Handle[BVH_Properties]) {.
    importcpp: "SetProperties", header: "BVH_Object.hxx".}
proc isDirty*(this: BVH_ObjectTransient): StandardBoolean {.noSideEffect,
    importcpp: "IsDirty", header: "BVH_Object.hxx".}
proc markDirty*(this: var BVH_ObjectTransient) {.importcpp: "MarkDirty",
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
proc box*[T; N: static[cint]](this: BVH_Object[T, N]): BVH_Box[T, N] {.noSideEffect,
    importcpp: "Box", header: "BVH_Object.hxx".}

