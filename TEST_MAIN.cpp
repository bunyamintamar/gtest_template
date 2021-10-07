#include "TEST_DEFINITION.h"

/* USER CODE BEGIN 0  -  include files */

#include "myfunctions.h"

/* USER CODE END */


/* USER CODE BEGIN 1  -  add your test fixture(s) */

TEST(testName, subTest_1)
{
    ASSERT_EQ(add(10, 22), 32);
}

/* USER CODE END 1 */

GTEST_RUN();