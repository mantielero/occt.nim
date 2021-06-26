template <typename TheSize>
typename opencascade::std::enable_if<!opencascade::std::is_same<Standard_Size, unsigned int>::value
                                       && opencascade::std::is_same<TheSize, Standard_Size>::value,
                                     Standard_Integer>::type
HashCode (const TheSize theValue, const Standard_Integer theUpperBound)
{
  Standard_Size aKey = ~theValue + (theValue << 18);
  aKey ^= (aKey >> 31);
  aKey *= 21;
  aKey ^= (aKey >> 11);
  aKey += (aKey << 6);
  aKey ^= (aKey >> 22);
  return IntegerHashCode(aKey, IntegerLast(), theUpperBound);
}
inline Standard_Boolean IsEqual(const Standard_Size One,
                                const Standard_Size Two)
{
  return One == Two;
}