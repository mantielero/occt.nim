##  Created on: 2012-07-10
##  Created by: VRO
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

import
  Image_PixMap, ../TCollection/TCollection_AsciiString,
  ../TColStd/TColStd_HPackedMapOfInteger, ../NCollection/NCollection_List,
  ../NCollection/NCollection_Vector

## ! This class compares two images pixel-by-pixel.
## ! It uses the following methods to ignore the difference between images:
## !  - Black/White comparison. It makes the images 2-colored before the comparison.
## !  - Equality with tolerance. Colors of two pixels are considered the same if the
## !    differnce of their color is less than a tolerance.
## !  - Border filter. The algorithm ignores alone independent pixels,
## !    which are different on both images, ignores the "border effect" -
## !    the difference caused by triangles located at angle about 0 or 90 degrees to the user.
## !
## ! Border filter ignores a difference in implementation of
## ! anti-aliasing and other effects on boundary of a shape.
## ! The triangles of a boundary zone are usually located so that their normals point aside the user
## ! (about 90 degree between the normal and the direction to the user's eye).
## ! Deflection of the light for such a triangle depends on implementation of the video driver.
## ! In order to skip this difference the following algorithm is used:
## !  a) "Different" pixels are groupped and checked on "one-pixel width line".
## !     indeed, the pixels may represent not a line, but any curve.
## !     But the width of this curve should be not more than a pixel.
## !     This group of pixels become a candidate to be ignored because of boundary effect.
## !  b) The group of pixels is checked on belonging to a "shape".
## !     Neighbour pixels are checked from the reference image.
## !     This test confirms a fact that the group of pixels belongs to a shape and
## !     represent a boundary of the shape.
## !     In this case the whole group of pixels is ignored (considered as same).
## !     Otherwise, the group of pixels may represent a geometrical curve in the viewer 3D
## !     and should be considered as "different".
## !
## ! References:
## !     1. http://pdiff.sourceforge.net/ypg01.pdf
## !     2. http://pdiff.sourceforge.net/metric.html
## !     3. http://www.cs.ucf.edu/~sumant/publications/sig99.pdf
## !     4. http://www.worldscientific.com/worldscibooks/10.1142/2641#t=toc (there is a list of articles and books in PDF format)

type
  Image_Diff* {.importcpp: "Image_Diff", header: "Image_Diff.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                 ## !
                                                                                                 ## An
                                                                                                 ## empty
                                                                                                 ## constructor.
                                                                                                 ## Init()
                                                                                                 ## should
                                                                                                 ## be
                                                                                                 ## called
                                                                                                 ## for
                                                                                                 ## initialization.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Perform
                                                                                                 ## border
                                                                                                 ## filter
                                                                                                 ## algorithm.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Map
                                                                                                 ## two
                                                                                                 ## pixel
                                                                                                 ## coordinates
                                                                                                 ## to
                                                                                                 ## 32-bit
                                                                                                 ## integer
    ## !< reference image to compare (from)
    ## !< new       image to compare (to)
    ## !< tolerance for equality check (0..1, 0 - any not equal, 1 - opposite colors)
    ## !< perform algorithm with border effect filter
    ## ! coordinates of different pixels, packed in one int using 16-bit integers to save memory


proc constructImage_Diff*(): Image_Diff {.constructor, importcpp: "Image_Diff(@)",
                                       header: "Image_Diff.hxx".}
proc destroyImage_Diff*(this: var Image_Diff) {.importcpp: "#.~Image_Diff()",
    header: "Image_Diff.hxx".}
proc Init*(this: var Image_Diff; theImageRef: handle[Image_PixMap];
          theImageNew: handle[Image_PixMap];
          theToBlackWhite: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Init", header: "Image_Diff.hxx".}
proc Init*(this: var Image_Diff; theImgPathRef: TCollection_AsciiString;
          theImgPathNew: TCollection_AsciiString;
          theToBlackWhite: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Init", header: "Image_Diff.hxx".}
proc SetColorTolerance*(this: var Image_Diff; theTolerance: Standard_Real) {.
    importcpp: "SetColorTolerance", header: "Image_Diff.hxx".}
proc ColorTolerance*(this: Image_Diff): Standard_Real {.noSideEffect,
    importcpp: "ColorTolerance", header: "Image_Diff.hxx".}
proc SetBorderFilterOn*(this: var Image_Diff; theToIgnore: Standard_Boolean) {.
    importcpp: "SetBorderFilterOn", header: "Image_Diff.hxx".}
proc IsBorderFilterOn*(this: Image_Diff): Standard_Boolean {.noSideEffect,
    importcpp: "IsBorderFilterOn", header: "Image_Diff.hxx".}
proc Compare*(this: var Image_Diff): Standard_Integer {.importcpp: "Compare",
    header: "Image_Diff.hxx".}
proc SaveDiffImage*(this: Image_Diff; theDiffImage: var Image_PixMap): Standard_Boolean {.
    noSideEffect, importcpp: "SaveDiffImage", header: "Image_Diff.hxx".}
proc SaveDiffImage*(this: Image_Diff; theDiffPath: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "SaveDiffImage", header: "Image_Diff.hxx".}
type
  Image_Diffbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_Diff::get_type_name(@)",
                              header: "Image_Diff.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_Diff::get_type_descriptor(@)", header: "Image_Diff.hxx".}
proc DynamicType*(this: Image_Diff): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_Diff.hxx".}
discard "forward decl of Image_Diff"
type
  Handle_Image_Diff* = handle[Image_Diff]
