##  Created on: 1997-02-13
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
  ../TColgp/TColgp_HArray1OfVec2d, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream

discard "forward decl of Vrml_TextureCoordinate2"
discard "forward decl of Vrml_TextureCoordinate2"
type
  Handle_Vrml_TextureCoordinate2* = handle[Vrml_TextureCoordinate2]

## ! defines a TextureCoordinate2 node of VRML specifying properties of geometry
## ! and its appearance.
## ! This  node  defines  a  set  of  2D  coordinates  to  be  used  to  map  textures
## ! to  the  vertices  of  subsequent  PointSet,  IndexedLineSet,  or  IndexedFaceSet
## ! objects.  It  replaces  the  current  texture  coordinates  in  the  rendering
## ! state  for  the  shapes  to  use.
## ! Texture  coordinates  range  from  0  to  1  across  the  texture.
## ! The  horizontal  coordinate,  called  S,  is  specified  first,  followed
## ! by  vertical  coordinate,  T.
## ! By  default  :
## ! myPoint (0 0)

type
  Vrml_TextureCoordinate2* {.importcpp: "Vrml_TextureCoordinate2",
                            header: "Vrml_TextureCoordinate2.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_TextureCoordinate2*(): Vrml_TextureCoordinate2 {.constructor,
    importcpp: "Vrml_TextureCoordinate2(@)", header: "Vrml_TextureCoordinate2.hxx".}
proc constructVrml_TextureCoordinate2*(aPoint: handle[TColgp_HArray1OfVec2d]): Vrml_TextureCoordinate2 {.
    constructor, importcpp: "Vrml_TextureCoordinate2(@)",
    header: "Vrml_TextureCoordinate2.hxx".}
proc SetPoint*(this: var Vrml_TextureCoordinate2;
              aPoint: handle[TColgp_HArray1OfVec2d]) {.importcpp: "SetPoint",
    header: "Vrml_TextureCoordinate2.hxx".}
proc Point*(this: Vrml_TextureCoordinate2): handle[TColgp_HArray1OfVec2d] {.
    noSideEffect, importcpp: "Point", header: "Vrml_TextureCoordinate2.hxx".}
proc Print*(this: Vrml_TextureCoordinate2; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_TextureCoordinate2.hxx".}
type
  Vrml_TextureCoordinate2base_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_TextureCoordinate2::get_type_name(@)",
                              header: "Vrml_TextureCoordinate2.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_TextureCoordinate2::get_type_descriptor(@)",
    header: "Vrml_TextureCoordinate2.hxx".}
proc DynamicType*(this: Vrml_TextureCoordinate2): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Vrml_TextureCoordinate2.hxx".}