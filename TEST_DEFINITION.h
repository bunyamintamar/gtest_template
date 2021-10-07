#include <gtest/gtest.h>

#define GTEST_RUN()                       \
int main(int argc, char **argv)           \
{                                         \
    testing::InitGoogleTest(&argc, argv); \
    return RUN_ALL_TESTS();               \
}