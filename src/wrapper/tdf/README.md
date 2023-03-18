# Iterators
Let's fix iterators.

They are defined like:
```
typedef NCollection_List<Handle(TDF_AttributeDelta)>::Iterator TDF_ListIteratorOfAttributeDeltaList;
```

NCollection_List was wrapped like:
```
NCollectionList*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                header: "NCollection_List.hxx", bycopy.} = object of NCollectionBaseList 

```
and there is also:
```
  NCollectionListIterator* = NCollectionTListIterator[TheItemType]

```

and:
```
  NCollectionTListIterator*[TheItemType] {.
      importcpp: "NCollection_TListIterator<\'0>",
      header: "NCollection_TListIterator.hxx", bycopy.} = object of NCollectionBaseListIterator 

```

It looks like we need something closer to:
```
  NCollectionSparseArrayIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::Iterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayConstIterator 

```