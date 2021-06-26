# /usr/include/opencascade/TColgp_HSequenceOfPnt2d.hxx --> occt/tcolgp/TColgp_HSequenceOfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofpnt2d = "/usr/include/opencascade/TColgp_HSequenceOfPnt2d.hxx"
type
  TColgpHSequenceOfPnt2d* {.importcpp: "TColgp_HSequenceOfPnt2d",
                           header: headerTcolgphsequenceofpnt2d, bycopy.} = object of TColgpSequenceOfPnt2d


proc `new`*(this: var TColgpHSequenceOfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator new",
    header: headerTcolgphsequenceofpnt2d.}
proc `delete`*(this: var TColgpHSequenceOfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator delete",
    header: headerTcolgphsequenceofpnt2d.}
proc `new[]`*(this: var TColgpHSequenceOfPnt2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator new[]",
    header: headerTcolgphsequenceofpnt2d.}
proc `delete[]`*(this: var TColgpHSequenceOfPnt2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator delete[]",
    header: headerTcolgphsequenceofpnt2d.}
proc `new`*(this: var TColgpHSequenceOfPnt2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator new",
    header: headerTcolgphsequenceofpnt2d.}
proc `delete`*(this: var TColgpHSequenceOfPnt2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator delete",
    header: headerTcolgphsequenceofpnt2d.}
proc `new`*(this: var TColgpHSequenceOfPnt2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator new",
    header: headerTcolgphsequenceofpnt2d.}
proc `delete`*(this: var TColgpHSequenceOfPnt2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfPnt2d::operator delete",
    header: headerTcolgphsequenceofpnt2d.}
proc constructTColgpHSequenceOfPnt2d*(): TColgpHSequenceOfPnt2d {.constructor,
    importcpp: "TColgp_HSequenceOfPnt2d(@)", header: headerTcolgphsequenceofpnt2d.}
proc constructTColgpHSequenceOfPnt2d*(theOther: TColgpSequenceOfPnt2d): TColgpHSequenceOfPnt2d {.
    constructor, importcpp: "TColgp_HSequenceOfPnt2d(@)",
    header: headerTcolgphsequenceofpnt2d.}
proc sequence*(this: TColgpHSequenceOfPnt2d): TColgpSequenceOfPnt2d {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofpnt2d.}
proc append*(this: var TColgpHSequenceOfPnt2d; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofpnt2d.}
proc append*(this: var TColgpHSequenceOfPnt2d;
            theSequence: var TColgpSequenceOfPnt2d) {.importcpp: "Append",
    header: headerTcolgphsequenceofpnt2d.}
proc changeSequence*(this: var TColgpHSequenceOfPnt2d): var TColgpSequenceOfPnt2d {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofpnt2d.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfPnt2d , T > :: value > :: type * = 0 ) { TColgp_SequenceOfPnt2d :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfPnt2d::get_type_name(@)",
                            header: headerTcolgphsequenceofpnt2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfPnt2d::get_type_descriptor(@)",
    header: headerTcolgphsequenceofpnt2d.}
proc dynamicType*(this: TColgpHSequenceOfPnt2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerTcolgphsequenceofpnt2d.}
discard "forward decl of TColgp_HSequenceOfPnt2d"
type
  HandleTColgpHSequenceOfPnt2d* = Handle[TColgpHSequenceOfPnt2d]
