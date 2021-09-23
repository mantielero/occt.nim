##  Created on: 1997-02-10
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfReal, ../gp/gp_Vec, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream

discard "forward decl of gp_Vec"
discard "forward decl of Vrml_LOD"
discard "forward decl of Vrml_LOD"
type
  Handle_Vrml_LOD* = handle[Vrml_LOD]

## ! defines a LOD (level of detailization) node of VRML specifying properties
## ! of geometry  and its appearance.
## ! This  group  node  is  used  to  allow  applications  to  switch  between
## ! various  representations  of  objects  automatically. The  children  of  this
## ! node  typically  represent  the  same  object  or  objects  at  the  varying
## ! of  Levels  Of  Detail  (LOD),  from  highest  detail  to  lowest.
## !
## ! The  specified  center  point  of  the  LOD  is  transformed  by  current
## ! transformation  into  world  space,  and  yhe  distancefrom  the  transformed
## ! center  to  the  world-space  eye  point  is  calculated.
## ! If  thedistance  is  less  than  the  first  value  in  the  ranges  array,
## ! than  the  first  child  of  the  LOD  group  is  drawn.  If  between
## ! the  first  and  second  values  in  the  range  array,  the  second  child
## ! is  drawn,  etc.
## ! If  there  are  N  values  in  the  range  array,  the  LOD  group  should
## ! have  N+1  children.
## ! Specifying  too  few  children  will  result  in  the  last  child  being
## ! used  repeatedly  for  the  lowest  lewels  of  detail;  if  too  many  children
## ! are  specified,  the  extra  children  w ll  be  ignored.
## ! Each  value  in  the  ranges  array  should  be  greater  than  the previous
## ! value,  otherwise  results  are  undefined.

type
  Vrml_LOD* {.importcpp: "Vrml_LOD", header: "Vrml_LOD.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_LOD*(): Vrml_LOD {.constructor, importcpp: "Vrml_LOD(@)",
                                   header: "Vrml_LOD.hxx".}
proc constructVrml_LOD*(aRange: handle[TColStd_HArray1OfReal]; aCenter: gp_Vec): Vrml_LOD {.
    constructor, importcpp: "Vrml_LOD(@)", header: "Vrml_LOD.hxx".}
proc SetRange*(this: var Vrml_LOD; aRange: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetRange", header: "Vrml_LOD.hxx".}
proc Range*(this: Vrml_LOD): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "Range", header: "Vrml_LOD.hxx".}
proc SetCenter*(this: var Vrml_LOD; aCenter: gp_Vec) {.importcpp: "SetCenter",
    header: "Vrml_LOD.hxx".}
proc Center*(this: Vrml_LOD): gp_Vec {.noSideEffect, importcpp: "Center",
                                   header: "Vrml_LOD.hxx".}
proc Print*(this: Vrml_LOD; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_LOD.hxx".}
type
  Vrml_LODbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_LOD::get_type_name(@)",
                              header: "Vrml_LOD.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_LOD::get_type_descriptor(@)", header: "Vrml_LOD.hxx".}
proc DynamicType*(this: Vrml_LOD): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_LOD.hxx".}