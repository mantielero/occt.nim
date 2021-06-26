# /usr/include/opencascade/TColgp_HSequenceOfDir2d.hxx --> occt/tcolgp/TColgp_HSequenceOfDir2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofdir2d = "/usr/include/opencascade/TColgp_HSequenceOfDir2d.hxx"
type
  TColgpHSequenceOfDir2d* {.importcpp: "TColgp_HSequenceOfDir2d",
                           header: headerTcolgphsequenceofdir2d, bycopy.} = object of TColgpSequenceOfDir2d


proc `new`*(this: var TColgpHSequenceOfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfDir2d::operator new",
    header: headerTcolgphsequenceofdir2d.}
proc `delete`*(this: var TColgpHSequenceOfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfDir2d::operator delete",
    header: headerTcolgphsequenceofdir2d.}
proc `new[]`*(this: var TColgpHSequenceOfDir2d; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfDir2d::operator new[]",
    header: headerTcolgphsequenceofdir2d.}
proc `delete[]`*(this: var TColgpHSequenceOfDir2d; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfDir2d::operator delete[]",
    header: headerTcolgphsequenceofdir2d.}
proc `new`*(this: var TColgpHSequenceOfDir2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfDir2d::operator new",
    header: headerTcolgphsequenceofdir2d.}
proc `delete`*(this: var TColgpHSequenceOfDir2d; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfDir2d::operator delete",
    header: headerTcolgphsequenceofdir2d.}
proc `new`*(this: var TColgpHSequenceOfDir2d; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfDir2d::operator new",
    header: headerTcolgphsequenceofdir2d.}
proc `delete`*(this: var TColgpHSequenceOfDir2d; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfDir2d::operator delete",
    header: headerTcolgphsequenceofdir2d.}
proc constructTColgpHSequenceOfDir2d*(): TColgpHSequenceOfDir2d {.constructor,
    importcpp: "TColgp_HSequenceOfDir2d(@)", header: headerTcolgphsequenceofdir2d.}
proc constructTColgpHSequenceOfDir2d*(theOther: TColgpSequenceOfDir2d): TColgpHSequenceOfDir2d {.
    constructor, importcpp: "TColgp_HSequenceOfDir2d(@)",
    header: headerTcolgphsequenceofdir2d.}
proc sequence*(this: TColgpHSequenceOfDir2d): TColgpSequenceOfDir2d {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofdir2d.}
proc append*(this: var TColgpHSequenceOfDir2d; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofdir2d.}
proc append*(this: var TColgpHSequenceOfDir2d;
            theSequence: var TColgpSequenceOfDir2d) {.importcpp: "Append",
    header: headerTcolgphsequenceofdir2d.}
proc changeSequence*(this: var TColgpHSequenceOfDir2d): var TColgpSequenceOfDir2d {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofdir2d.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfDir2d , T > :: value > :: type * = 0 ) { TColgp_SequenceOfDir2d :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfDir2d::get_type_name(@)",
                            header: headerTcolgphsequenceofdir2d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfDir2d::get_type_descriptor(@)",
    header: headerTcolgphsequenceofdir2d.}
proc dynamicType*(this: TColgpHSequenceOfDir2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerTcolgphsequenceofdir2d.}
discard "forward decl of TColgp_HSequenceOfDir2d"
type
  HandleTColgpHSequenceOfDir2d* = Handle[TColgpHSequenceOfDir2d]
