# /usr/include/opencascade/TColgp_HSequenceOfVec2d.hxx --> occt/tkMath/tcolgp/TColgp_HSequenceOfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofvec2d = "/usr/include/opencascade/TColgp_HSequenceOfVec2d.hxx"
type
  TColgpHSequenceOfVec2d* {.importcpp: "TColgp_HSequenceOfVec2d",
                           header: headerTcolgphsequenceofvec2d, bycopy.} = object of TColgpSequenceOfVec2d


proc `new`*(this: var TColgpHSequenceOfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfVec2d::operator new",
    header: headerTcolgphsequenceofvec2d.}
proc `delete`*(this: var TColgpHSequenceOfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfVec2d::operator delete",
    header: headerTcolgphsequenceofvec2d.}
proc `new[]`*(this: var TColgpHSequenceOfVec2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfVec2d::operator new[]",
    header: headerTcolgphsequenceofvec2d.}
proc `delete[]`*(this: var TColgpHSequenceOfVec2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfVec2d::operator delete[]",
    header: headerTcolgphsequenceofvec2d.}
proc `new`*(this: var TColgpHSequenceOfVec2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfVec2d::operator new",
    header: headerTcolgphsequenceofvec2d.}
proc `delete`*(this: var TColgpHSequenceOfVec2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfVec2d::operator delete",
    header: headerTcolgphsequenceofvec2d.}
proc `new`*(this: var TColgpHSequenceOfVec2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfVec2d::operator new",
    header: headerTcolgphsequenceofvec2d.}
proc `delete`*(this: var TColgpHSequenceOfVec2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfVec2d::operator delete",
    header: headerTcolgphsequenceofvec2d.}
proc constructTColgpHSequenceOfVec2d*(): TColgpHSequenceOfVec2d {.constructor,
    importcpp: "TColgp_HSequenceOfVec2d(@)", header: headerTcolgphsequenceofvec2d.}
proc constructTColgpHSequenceOfVec2d*(theOther: TColgpSequenceOfVec2d): TColgpHSequenceOfVec2d {.
    constructor, importcpp: "TColgp_HSequenceOfVec2d(@)",
    header: headerTcolgphsequenceofvec2d.}
proc sequence*(this: TColgpHSequenceOfVec2d): TColgpSequenceOfVec2d {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofvec2d.}
proc append*(this: var TColgpHSequenceOfVec2d; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofvec2d.}
proc append*(this: var TColgpHSequenceOfVec2d;
            theSequence: var TColgpSequenceOfVec2d) {.importcpp: "Append",
    header: headerTcolgphsequenceofvec2d.}
proc changeSequence*(this: var TColgpHSequenceOfVec2d): var TColgpSequenceOfVec2d {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofvec2d.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfVec2d , T > :: value > :: type * = 0 ) { TColgp_SequenceOfVec2d :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfVec2d::get_type_name(@)",
                            header: headerTcolgphsequenceofvec2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfVec2d::get_type_descriptor(@)",
    header: headerTcolgphsequenceofvec2d.}
proc dynamicType*(this: TColgpHSequenceOfVec2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerTcolgphsequenceofvec2d.}
discard "forward decl of TColgp_HSequenceOfVec2d"
type
  HandleTColgpHSequenceOfVec2d* = Handle[TColgpHSequenceOfVec2d]
