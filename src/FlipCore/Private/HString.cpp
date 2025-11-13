#include "Core/HString.h"
#include "Core/Assert.h"

namespace Flip
{
    char HString::hashTable[hashTableSize][hashTableMaxStringLength] = { {'\0'} };
    HString HString::None = HString();

    const char* HString::Get() const
    {
        return hashTable[_hash];
    }
}
