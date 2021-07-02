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
## 		       --------------------------
## 			    IGESData_Dump.hxx
## 		       --------------------------

##   ###############################################################
##   Macros to help Dumping Parts of IGES Entities
##   (for usefull and repetitive cases but which apply to different classes
##    but with similar signatures, such as Arrays)
##   Remember that the class IGESDumper processes itself individual dump of
##   IGESEntity
##   General Names are : IGESData_Dump***(S,arglist);  S being an output Stream
##   ---------------------------------------------------------------
##                           AVAILABLE MACROS
##   Dumping simple IGESEntity : see the class IGESDumper itself
##   Dumping a text as HAsciiString (either from PCollection or TCollection)
##   (manages an empty pointer) :
##   IGESData_DumpString(S,str)  displays   " "Content" " or "(undefined)"
##   Dumping Simple Data : Level must be managed by the caller
##   (general rule : Transformed Display to be used if Level > 5)
##   IGESData_DumpXY(S,XYval)               " (Xval,Yval)"         (no Transf)
##   IGESData_DumpXYT(S,XYVal,Trsf)         " (Xval,Yval)"         Z ignored
##   IGESData_DumpXYTZ(S,XYVal,Trsf,Z)      " (Xval,Yval,Zval)"    Z combined
##   IGESData_DumpXYZ(S,XYZval)             " (Xval,Yval,Zval)"    (no Transf)
##   IGESData_DumpXYZT(S,XYZval,Trsf)       " (Xval,Yval,Zval)"    (Transf)
##   Dumping Simple Data with Level : first displays Immediate Value, then
##   if Level > 5 and Transformation is not Identity, displays Transformed Value
##   IGESData_DumpXYL(S,Level,XYVal,Trsf)    " (Xval,Yval)  Transformed : (..)"
##   IGESData_DumpXYLZ(S,Level,XYVal,Trsf,Z) " (Xval,Yval,Zval)  Transformed :."
##   IGESData_DumpXYZL(S,Level,XYZval,Trsf)  " (Xval,Yval,Zval)  Transformed :."
##   Dumping Lists : general features
##       Lower and Upper are effective Values (immediate or given by functions).
##       Typically, give Lower = 1, Upper = ent->NbItems()
##       Item is the name of the access fonction (without its Index)
##       For Instance,   Item = compcurve->Curve  AND NOT  compcurve->Curve(..)
##       If Level is present, it commands more or less extensive display :
##         Level = 4, only limits are displayed
##   If it is a classic list, starting from 1 with a count (which can be 0),
##   displays "Count <upper> ..."  or "Empty". Else, display "(low - up) ..."
##         Level = 5, in addfition items are displayed shortly
##         (Entity Directory Numbers, XY/XYZ Coordinates)
##         Level > 5, in some cases, items are displayed with more details
##         (Entities with Type/Form, XY/XYZ with Transformed equivalents)
##   IGESData_DumpListVal(S,Lower,Upper,Item)   Item can be Real,Integer,
##                 more generally, any type having operator << to Handle(Message_Messenger)
##   IGESData_DumpListXY(S,Lower,Upper,Item)    Item : XY without Transformation
##   IGESData_DumpListXYZ(S,Lower,Upper,Item)   Item : XYZ without Transf
##   IGESData_DumpVals(S,Level,Lower,Upper,Item)             Item : Real,Integer
##   IGESData_DumpListXYL(S,Level,Lower,Upper,Item,Trsf)     Item : XY
##   IGESData_DumpListXYLZ(S,Level,Lower,Upper,Item,Trsf,Z)  Item : XY. Z is a
##                 Common Displacement
##   IGESData_DumpListXYZL(S,Level,Lower,Upper,Item,Trsf)    Item : XYZ
##   IGESData_DumpStrings(S,Level,Lower,Upper,Item)          Item : HAsciiString
##   IGESData_DumpEntities(S,Dumper,Level,Lower,Upper,Item)  Item : IGESEntity
##                 Dumper is an IGESDumper which displays IGES Entities
##   Dumping Complex Arrays : only the most useful cases are taken into account
##   Doubles Arrays (Rectangles) and Single Arrays of Single Arrays (Jagged)
##   IGESData_DumpRectVals(S,Level,LowerRow,UpperRow,LowerCol,UpperCol,Item)
##            LowerRow,LowerCol,UpperRow,UpperCol : effective values
##            Item : Real,Integer
##   ---------------------------------------------------------------

template iGESDataDumpString*(s, str: untyped): void =
  if str.isNull():
    s shl "(undefined)"
  else:
    s shl '\"' shl str.string() shl '\"'

template iGESDataDumpXY*(s, xYval: untyped): untyped =
  s shl " (" shl xYval.x() shl "," shl xYval.y() shl ")"

template iGESDataDumpXYZ*(s, xYZval: untyped): untyped =
  s shl " (" shl xYZval.x() shl "," shl xYZval.y() shl "," shl xYZval.z() shl ")"

template iGESDataDumpXYT*(s, xYval, trsf: untyped): void =
  var xYZval: GpXYZ
  trsf.transforms(xYZval)
  iGESDataDumpXY(s, xYZval)

template iGESDataDumpXYTZ*(s, xYval, trsf, z: untyped): void =
  var xYZval: GpXYZ
  trsf.transforms(xYZval)
  iGESDataDumpXYZ(s, xYZval)

template iGESDataDumpXYZT*(s, xYZval, trsf: untyped): void =
  var xYZTval: GpXYZ
  trsf.transforms(xYZTval)
  iGESDataDumpXYZ(s, xYZTval)

template iGESDataDumpXYL*(s, level, xYval, trsf: untyped): void =
  iGESDataDumpXY(s, xYval)
  if level > 5 and trsf.form() != gpIdentity:
    s shl "  Transformed :"
    iGESDataDumpXYT(s, xYval, trsf)

template iGESDataDumpXYLZ*(s, level, xYval, trsf, z: untyped): void =
  iGESDataDumpXY(s, xYval)
  if level > 5 and trsf.form() != gpIdentity:
    s shl "  Transformed :"
    iGESDataDumpXYTZ(s, xYval, trsf, z)

template iGESDataDumpXYZL*(s, level, xYZval, trsf: untyped): void =
  iGESDataDumpXYZ(s, xYZval)
  if level > 5 and trsf.form() != gpIdentity:
    s shl "  Transformed :"
    iGESDataDumpXYZT(s, xYZval, trsf)

template iGESDataDumpListHeader*(s, lower, upper: untyped): void =
  if lower > upper:
    s shl " (Empty List)"
  elif lower == 1:
    s shl " (Count : " shl upper shl ")"
  else:
    s shl " (" shl lower shl " - " shl upper shl ")"

template iGESDataDumpListVal*(s, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  s shl " :"
  var iopa: StandardInteger
  while iopa <= up:
    s shl " " shl item(iopa)
    inc(iopa)

template iGESDataDumpListXY*(s, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  s shl " :"
  var iopa: StandardInteger
  while iopa <= up:
    iGESDataDumpXY(s, item(iopa))
    inc(iopa)

template iGESDataDumpListXYZ*(s, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  s shl " :"
  var iopa: StandardInteger
  while iopa <= up:
    iGESDataDumpXYZ(s, item(iopa))
    inc(iopa)

template iGESDataDumpVals*(s, level, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      s shl " " shl item(iopa)
      inc(iopa)

template iGESDataDumpListXYL*(s, level, lower, upper, item, trsf: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4, transformed : level > 5]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      iGESDataDumpXY(s, item(iopa))
      inc(iopa)
    if trsf.form() != gpIdentity:
      s shl "\n Transformed :"
      if level == 5:
        s shl " [ask level > 5]"
      else:
        var jopa: StandardInteger
        while jopa <= up:
          iGESDataDumpXYT(s, item(jopa), trsf)
          inc(jopa)

template iGESDataDumpListXYLZ*(s, level, lower, upper, item, trsf, z: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4, transformed : level > 5]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      iGESDataDumpXY(s, item(iopa))
      inc(iopa)
    if trsf.form() != gpIdentity:
      s shl "\n Transformed :"
      if level == 5:
        s shl " [ask level > 5]"
      else:
        var jopa: StandardInteger
        while jopa <= up:
          iGESDataDumpXYTZ(s, item(jopa), trsf, z)
          inc(jopa)

template iGESDataDumpListXYZL*(s, level, lower, upper, item, trsf: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4, transformed : level > 5]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      iGESDataDumpXYZ(s, item(iopa))
      inc(iopa)
    if trsf.form() != gpIdentity:
      s shl "\n Transformed :"
      if level == 5:
        s shl " [ask level > 5]"
      else:
        var jopa: StandardInteger
        while jopa <= up:
          iGESDataDumpXYZT(s, item(jopa), trsf)
          inc(jopa)

template iGESDataDumpStrings*(s, level, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      s shl "\n[" shl blanks(iopa, 3) shl iopa shl "]:\"" shl item(iopa).string() shl
          '\"'
      inc(iopa)
    s shl "\n"

template iGESDataDumpEntities*(s, dumper, level, lower, upper, item: untyped): void =
  var lo: StandardInteger
  var up: StandardInteger
  iGESDataDumpListHeader(s, lo, up)
  if lo > up:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4]"
  elif level > 0:
    s shl " :"
    var iopa: StandardInteger
    while iopa <= up:
      if level == 5:
        s shl " "
        dumper.printDNum(item(iopa), s)
      else:
        s shl "\n[" shl blanks(iopa, 3) shl iopa shl "]:"
        dumper.printShort(item(iopa), s)
      inc(iopa)

template iGESDataDumpRectVals*(s, level, lowCol, upCol, lowRow, upRow, item: untyped): void =
  var loco: cint
  var upc: cint
  var lor: cint
  var upr: cint
  s shl " (Row :" shl lor shl " - " shl upr shl " ; Col :" shl loco shl " - " shl upc shl ")"
  if loco > upc or lor > upr:
    discard
  elif level == 4 or level == -4:
    s shl " [content : ask level > 4]"
  elif level > 0:
    s shl "\n"
    var ir: cint
    while ir <= upr:
      s shl "Row " shl ir shl ":["
      var ic: cint
      while ic <= upc:
        s shl " " shl item(ic, ir)
        inc(ic)
      s shl " ]\n"
      inc(ir)


