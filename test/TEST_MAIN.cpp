#include "TEST_DEFINITION.h"

/* USER CODE BEGIN 0  -  include files */

#include "../develop/myFunctions.h"

/* USER CODE END */


/* USER CODE BEGIN 1  -  add your test fixture(s) */

TEST(testName, subTest_1)
{
    EXPECT_EQ(add(22, 10), 12);
}

TEST(testName, subTest_2)
{
    EXPECT_EQ(add(22, 10), 13);
}

/* USER CODE END 1 */

TEST_RUN();
