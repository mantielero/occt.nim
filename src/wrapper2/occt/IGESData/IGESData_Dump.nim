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

import
  ../gp/gp_XY, ../gp/gp_Pnt2d, ../gp/gp_XYZ, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../gp/gp_Dir, ../gp/gp_GTrsf, ../Interface/Interface_MSG

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

template IGESData_DumpString*(S, str: untyped): void =
  if str.IsNull():
    S shl "(undefined)"
  else:
    S shl '\"' shl str.String() shl '\"'

template IGESData_DumpXY*(S, XYval: untyped): untyped =
  S shl " (" shl XYval.X() shl "," shl XYval.Y() shl ")"

template IGESData_DumpXYZ*(S, XYZval: untyped): untyped =
  S shl " (" shl XYZval.X() shl "," shl XYZval.Y() shl "," shl XYZval.Z() shl ")"

template IGESData_DumpXYT*(S, XYval, Trsf: untyped): void =
  var XYZval: gp_XYZ
  Trsf.Transforms(XYZval)
  IGESData_DumpXY(S, XYZval)

template IGESData_DumpXYTZ*(S, XYval, Trsf, Z: untyped): void =
  var XYZval: gp_XYZ
  Trsf.Transforms(XYZval)
  IGESData_DumpXYZ(S, XYZval)

template IGESData_DumpXYZT*(S, XYZval, Trsf: untyped): void =
  var XYZTval: gp_XYZ
  Trsf.Transforms(XYZTval)
  IGESData_DumpXYZ(S, XYZTval)

template IGESData_DumpXYL*(S, Level, XYval, Trsf: untyped): void =
  IGESData_DumpXY(S, XYval)
  if Level > 5 and Trsf.Form() != gp_Identity:
    S shl "  Transformed :"
    IGESData_DumpXYT(S, XYval, Trsf)

template IGESData_DumpXYLZ*(S, Level, XYval, Trsf, Z: untyped): void =
  IGESData_DumpXY(S, XYval)
  if Level > 5 and Trsf.Form() != gp_Identity:
    S shl "  Transformed :"
    IGESData_DumpXYTZ(S, XYval, Trsf, Z)

template IGESData_DumpXYZL*(S, Level, XYZval, Trsf: untyped): void =
  IGESData_DumpXYZ(S, XYZval)
  if Level > 5 and Trsf.Form() != gp_Identity:
    S shl "  Transformed :"
    IGESData_DumpXYZT(S, XYZval, Trsf)

template IGESData_DumpListHeader*(S, lower, upper: untyped): void =
  if lower > upper:
    S shl " (Empty List)"
  elif lower == 1:
    S shl " (Count : " shl upper shl ")"
  else:
    S shl " (" shl lower shl " - " shl upper shl ")"

template IGESData_DumpListVal*(S, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  S shl " :"
  var iopa: Standard_Integer
  while iopa <= up:
    S shl " " shl item(iopa)
    inc(iopa)

template IGESData_DumpListXY*(S, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  S shl " :"
  var iopa: Standard_Integer
  while iopa <= up:
    IGESData_DumpXY(S, item(iopa))
    inc(iopa)

template IGESData_DumpListXYZ*(S, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  S shl " :"
  var iopa: Standard_Integer
  while iopa <= up:
    IGESData_DumpXYZ(S, item(iopa))
    inc(iopa)

template IGESData_DumpVals*(S, Level, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      S shl " " shl item(iopa)
      inc(iopa)

template IGESData_DumpListXYL*(S, Level, lower, upper, item, Trsf: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4, transformed : level > 5]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      IGESData_DumpXY(S, item(iopa))
      inc(iopa)
    if Trsf.Form() != gp_Identity:
      S shl "\n Transformed :"
      if Level == 5:
        S shl " [ask level > 5]"
      else:
        var jopa: Standard_Integer
        while jopa <= up:
          IGESData_DumpXYT(S, item(jopa), Trsf)
          inc(jopa)

template IGESData_DumpListXYLZ*(S, Level, lower, upper, item, Trsf, Z: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4, transformed : level > 5]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      IGESData_DumpXY(S, item(iopa))
      inc(iopa)
    if Trsf.Form() != gp_Identity:
      S shl "\n Transformed :"
      if Level == 5:
        S shl " [ask level > 5]"
      else:
        var jopa: Standard_Integer
        while jopa <= up:
          IGESData_DumpXYTZ(S, item(jopa), Trsf, Z)
          inc(jopa)

template IGESData_DumpListXYZL*(S, Level, lower, upper, item, Trsf: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4, transformed : level > 5]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      IGESData_DumpXYZ(S, item(iopa))
      inc(iopa)
    if Trsf.Form() != gp_Identity:
      S shl "\n Transformed :"
      if Level == 5:
        S shl " [ask level > 5]"
      else:
        var jopa: Standard_Integer
        while jopa <= up:
          IGESData_DumpXYZT(S, item(jopa), Trsf)
          inc(jopa)

template IGESData_DumpStrings*(S, Level, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      S shl "\n[" shl Blanks(iopa, 3) shl iopa shl "]:\"" shl item(iopa).String() shl
          '\"'
      inc(iopa)
    S shl "\n"

template IGESData_DumpEntities*(S, dumper, Level, lower, upper, item: untyped): void =
  var lo: Standard_Integer
  var up: Standard_Integer
  IGESData_DumpListHeader(S, lo, up)
  if lo > up:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4]"
  elif Level > 0:
    S shl " :"
    var iopa: Standard_Integer
    while iopa <= up:
      if Level == 5:
        S shl " "
        dumper.PrintDNum(item(iopa), S)
      else:
        S shl "\n[" shl Blanks(iopa, 3) shl iopa shl "]:"
        dumper.PrintShort(item(iopa), S)
      inc(iopa)

template IGESData_DumpRectVals*(S, Level, LowCol, UpCol, LowRow, UpRow, Item: untyped): void =
  var loco: cint
  var upc: cint
  var lor: cint
  var upr: cint
  S shl " (Row :" shl lor shl " - " shl upr shl " ; Col :" shl loco shl " - " shl upc shl ")"
  if loco > upc or lor > upr:
    discard
  elif Level == 4 or Level == -4:
    S shl " [content : ask level > 4]"
  elif Level > 0:
    S shl "\n"
    var ir: cint
    while ir <= upr:
      S shl "Row " shl ir shl ":["
      var ic: cint
      while ic <= upc:
        S shl " " shl Item(ic, ir)
        inc(ic)
      S shl " ]\n"
      inc(ir)
