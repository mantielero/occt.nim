# PROVIDES: TCollection TCollectionAsciiString TCollectionBaseSequence TCollectionBasicMap TCollectionBasicMapIterator TCollectionExtendedString HandleTCollectionHAsciiString HandleTCollectionHExtendedString HandleTCollectionMapNode
# DEPENDS: StandardTransient StandardTransient StandardTransient StandardTransient

type
  TCollection* {.importcpp: "TCollection", header: "TCollection.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## prime
                                                                                ## number
                                                                                ## greater
                                                                                ## than
                                                                                ## <I>
                                                                                ## suitable
                                                                                ##
                                                                                ## !
                                                                                ## to
                                                                                ## dimension
                                                                                ## a
                                                                                ## Map.
                                                                                ## When
                                                                                ## <I>
                                                                                ## becomes
                                                                                ## great
                                                                                ## there
                                                                                ##
                                                                                ## !
                                                                                ## is
                                                                                ## a
                                                                                ## limit
                                                                                ## on
                                                                                ## the
                                                                                ## result
                                                                                ## (today
                                                                                ## the
                                                                                ## limit
                                                                                ## is
                                                                                ##
                                                                                ## !
                                                                                ## around
                                                                                ## 1
                                                                                ## 000
                                                                                ## 000).
                                                                                ## This
                                                                                ## is
                                                                                ## not
                                                                                ## a
                                                                                ## limit
                                                                                ## of
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ##
                                                                                ## !
                                                                                ## items
                                                                                ## but
                                                                                ## a
                                                                                ## limit
                                                                                ## in
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## buckets.
                                                                                ## i.e.
                                                                                ##
                                                                                ## !
                                                                                ## there
                                                                                ## will
                                                                                ## be
                                                                                ## more
                                                                                ## collisions
                                                                                ## in
                                                                                ## the
                                                                                ## map.

type
  TCollectionAsciiString* {.importcpp: "TCollection_AsciiString",
                           header: "TCollection_AsciiString.hxx", bycopy.} = object ## !
                                                                               ## Initializes a
                                                                               ## AsciiString
                                                                               ## to
                                                                               ## an
                                                                               ## empty
                                                                               ## AsciiString.
    ## !< NULL-terminated string
    ## !< length in bytes (excluding terminating NULL symbol)

type
  TCollectionBaseSequence* {.importcpp: "TCollection_BaseSequence",
                            header: "TCollection_BaseSequence.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## returns
                                                                                 ## True
                                                                                 ## if
                                                                                 ## the
                                                                                 ## sequence
                                                                                 ## <me>
                                                                                 ## contains
                                                                                 ## no
                                                                                 ## elements.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creation
                                                                                 ## of
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## sequence.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creation
                                                                                 ## by
                                                                                 ## copy
                                                                                 ## of
                                                                                 ## existing
                                                                                 ## Sequence.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Warning:
                                                                                 ## This
                                                                                 ## constructor
                                                                                 ## prints
                                                                                 ## a
                                                                                 ## warning
                                                                                 ## message.
                                                                                 ##
                                                                                 ## !
                                                                                 ## We
                                                                                 ## recommand
                                                                                 ## to
                                                                                 ## use
                                                                                 ## the
                                                                                 ## operator
                                                                                 ## =.

type
  TCollectionBasicMap* {.importcpp: "TCollection_BasicMap",
                        header: "TCollection_BasicMap.hxx", bycopy.} = object of RootObj ## ! Returns the number of buckets in <me>.
                                                                         ## !
                                                                         ## Initialize the map.  Single is  True when the  map
                                                                         ## ! uses only one table of
                                                                         ## buckets.
                                                                         ## !
                                                                         ## ! One table  : Map, DataMap
                                                                         ## ! Two tables :
                                                                         ## DoubleMap,
                                                                         ## IndexedMap,
                                                                         ## IndexedDataMap

type
  TCollectionBasicMapIterator* {.importcpp: "TCollection_BasicMapIterator",
                                header: "TCollection_BasicMapIterator.hxx", bycopy.} = object of RootObj ##
                                                                                         ## !
                                                                                         ## Resets
                                                                                         ## the
                                                                                         ## iterator
                                                                                         ## to
                                                                                         ## the
                                                                                         ## first
                                                                                         ## node.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## iterator.

type
  TCollectionExtendedString* {.importcpp: "TCollection_ExtendedString",
                              header: "TCollection_ExtendedString.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## a
                                                                                     ## ExtendedString
                                                                                     ## to
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## ExtendedString.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## true
                                                                                     ## if
                                                                                     ## the
                                                                                     ## input
                                                                                     ## CString
                                                                                     ## was
                                                                                     ## successfuly
                                                                                     ## converted
                                                                                     ##
                                                                                     ## !
                                                                                     ## to
                                                                                     ## UTF8
                                                                                     ## coding
    ## !< NULL-terminated string
    ## !< length in 16-bit code units (excluding terminating NULL symbol)

type
  HandleTCollectionHAsciiString* = Handle[TCollectionHAsciiString]
## ! A variable-length sequence of ASCII characters
## ! (normal 8-bit character type). It provides editing
## ! operations with built-in memory management to
## ! make HAsciiString objects easier to use than ordinary character arrays.
## ! HAsciiString objects are handles to strings.
## ! -   HAsciiString strings may be shared by several objects.
## ! -   You may use an AsciiString object to get the actual string.
## ! Note: HAsciiString objects use an AsciiString string as a field.

type
  HandleTCollectionHExtendedString* = Handle[TCollectionHExtendedString]
## ! A variable-length sequence of "extended"
## ! (UNICODE) characters (16-bit character
## ! type). It provides editing operations with
## ! built-in memory management to make
## ! ExtendedString objects easier to use than
## ! ordinary extended character arrays.
## ! HExtendedString objects are handles to strings.
## ! - HExtendedString strings may be shared by several objects.
## ! - You may use an ExtendedString object to get the actual string.
## ! Note: HExtendedString objects use an
## ! ExtendedString string as a field.

type
  HandleTCollectionMapNode* = Handle[TCollectionMapNode]
## ! Basic class root of all the Maps.

type
  TCollectionHAsciiString* {.importcpp: "TCollection_HAsciiString",
                            header: "TCollection_HAsciiString.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## a
                                                                                                    ## HAsciiString
                                                                                                    ## to
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## AsciiString.

type
  TCollectionHExtendedString* {.importcpp: "TCollection_HExtendedString",
                               header: "TCollection_HExtendedString.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## a
                                                                                                          ## HExtendedString
                                                                                                          ## to
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## ExtendedString.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## the
                                                                                                          ## field
                                                                                                          ## myString

type
  TCollectionMapNode* {.importcpp: "TCollection_MapNode",
                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient

                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient
type
  HandleTCollectionSeqNode* = Handle[TCollectionSeqNode]
  TCollectionSeqNode* {.importcpp: "TCollection_SeqNode",
                       header: "TCollection_SeqNode.hxx", bycopy.} = object of StandardTransient


