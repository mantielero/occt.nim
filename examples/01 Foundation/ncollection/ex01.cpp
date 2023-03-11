#include <opencascade/NCollection_List.hxx>
#include <opencascade/NCollection_TListIterator.hxx>

int main() {
    // Create a list of integers
    NCollection_List<int> myList;

    // Add some integers to the list
    myList.Append(1);
    myList.Append(2);
    myList.Append(3);

    // Create an iterator for the list
    NCollection_TListIterator<int> it(myList);

    // Traverse the list using the iterator
    while (it.More()) {
        std::cout << it.Value() << std::endl;
        it.Next();
    }

    return 0;
}